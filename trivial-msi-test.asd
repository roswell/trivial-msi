(defsystem trivial-msi-test
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :depends-on (:trivial-msi
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "trivial-msi")))))
