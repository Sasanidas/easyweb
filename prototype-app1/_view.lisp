(in-package :common-lisp-user)

(defpackage :prototype-app1.view
  (:use #:cl
	#:easyweb.html))

(in-package :prototype-app1.view)

(defmacro defview (name (&rest arguments) &body body)
  `(easyweb:defview ,name arguments ,arguments ,@body))

;; abow code can/should be inserted dynamically

(defview index-page ()
  (:doctype ()
    (:html ()
      (:head ()
	(:title ()
	  "Welcome to le-jango project!"))
      (:body (:font-color "green")
	(:p ()
	  (:h2 ()
	    "Hello, world! le-jango is working..."))
	(:p ()
	  (:br ())
	  "For more information, go on and jump into "
	  (:a (:href "http://localhost/le-jango/docs.html")
	      "tutorials")
	  " page.")))))

(defview open-link ((link "http://localhost:8000/"))
  (:doctype ()
    (:html ()
      (:head ()
	(:title ()
	  "Links..."))
      (:body ()
	(:a (:href link)
	  "the link")))))

(defview mervecigim ()
  (:html ()
    (:head ()
      (:script (:type "text/javascript")
	"function upper() { "
	"  key = window.event.keyCode;"
	"  window.event.keyCode = key-32; "
	"}"))
    (:body ()
      (:form ()
	     (:input (:type "text" 
			    :onkeyup "javascript:this.value=this.value.toUpperCase();"))))))

(defview argtest ((arg0 "arg0") arg1 (arg2 123))
  (:html ()
    (:body ()
      (let ((ret ""))
	(loop for arg in arguments
	   do (setf ret (format nil "~A~A" ret (:h3 () arg))))
	ret))))
