(defpackage :(% TMPL_VAR APPLICATION_NAME %)
  (:use #:cl #:easyweb))

(in-package :(% TMPL_VAR APPLICATION_NAME %))

;;load template files
;;once you load a template file it's created and 
;;changes wont affect by other loads
;;