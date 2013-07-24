#lang web-server
(require web-server/servlet-env)
(require web-server/templates)
 
(define (start req)
  (start
   (send/suspend
    (lambda (k-url)
      (response/full
       200 #"Okay"
       (current-seconds) TEXT/HTML-MIME-TYPE
       empty
       (list (string->bytes/utf-8 (include-template "main.html"))))))))

(serve/servlet start
  #:stateless? #t
  #:port (string->number (getenv "PORT"))
  #:listen-ip #f
  #:launch-browser? false
  #:servlet-regexp #rx".*"
)
