(in-package :cl-user)
(defpackage trivial-msi
  (:use :cl)
  (:export :install
           :uninstall))
(in-package :trivial-msi)

(defun install (pathname &key (directory nil directory-supplied-p)
                           (mode :full))
  "Install an MSI file in pathname. Optionally, specifiy the directory where the
program should be installed.

The mode option is one of :full, :passive or :quiet. The :full mode shows the
full installation GUI, while :passive proceeds with the installation, showing
only a progress bar, and :quiet suppresses all output."
  (uiop:run-program
   (concatenate 'string
                (format nil "msiexec /i ~S " (namestring pathname))
                (if directory-supplied-p
                    (format nil "INSTALLDIR=~S " (namestring directory))
                    " ")
                (ccase mode
                  (:full
                   " ")
                  (:passive
                   "/passive ")
                  (:quiet
                   "/quiet ")))))

(defun uninstall (pathname)
  "Uninstalled the program installed by this MSI file."
  (uiop:run-program
   (format nil "msiexec /x ~S" (namestring pathname))))
