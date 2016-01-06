(defsystem trivial-msi
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :maintainer "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :version "0.1"
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")
  :depends-on (:uiop)
  :components ((:module "src"
                :serial t
                :components
                ((:file "trivial-msi"))))
  :description "Utilities for working with Microsoft MSI files."
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op trivial-msi-test))))
