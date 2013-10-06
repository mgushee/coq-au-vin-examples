(use extras)
(use utf8-srfi-13)
(use coq-au-vin)
(use (prefix cav-db db:))
(use cav-db-sqlite)
(use simple-sha1)

(define (get-input prompt)
  (printf "~A: " prompt)
  (read-line))

(define (get-secret prompt)
  (printf "~A: " prompt)
  (system "stty -echo")
  (let ((input1 (read-line)))
    (newline)
    (system "stty echo")
    (printf "Confirm ~A: " (string-downcase prompt))
    (system "stty -echo")
    (let ((input2 (read-line)))
      (newline)
      (system "stty echo")
      (if (string=? input1 input2)
        input1
        (begin
          (print "Both entries must match.")
          (get-secret prompt))))))

(define (create-user)
  (let ((uname (get-input "Username"))
        (password (get-secret "Password"))
        (email (get-input "Email"))
        (role (get-input "Role"))
        (dispname (get-input "Display Name"))
        (blank? (lambda (s) (string=? (string-trim-both s) ""))))
    (cond
      ((or (blank? uname) (blank? password) (blank? email))
       (error "User name, password, and email are required fields."))
      ((not (member role '("admin" "editor" "author" "member" "guest")))
       (error "Role must be one of 'admin', 'editor', 'author', 'member', or 'guest'."))
      (else
        (let ((phash (string->sha1sum password)))
          (if (blank? dispname)
            ((db:add-user) uname phash email role)
            ((db:add-user) uname phash email role dispname)))))))

(define (run)
  (setup-db "data/blog.db")
  (enable-sqlite "data/blog.db" "data/content")
  ((db:connect))
  (register-roles)
  (create-user)
  ((db:disconnect)))

(run)
