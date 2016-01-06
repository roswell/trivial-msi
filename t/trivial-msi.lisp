(in-package :cl-user)
(defpackage trivial-msi-test
  (:use :cl :fiveam)
  (:export :run-tests))
(in-package :trivial-msi-test)

(def-suite tests
  :description "trivial-msi tests.")
(in-suite tests)

(defun run-tests ()
  (run! 'tests))
