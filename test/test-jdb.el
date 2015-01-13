(require 'test-simple)
(require 'load-relative)
(load-file "../realgud/debugger/jdb/core.el")
(test-simple-start)

(declare-function __FILE__  'require-relative)
(declare-function realgud:jdb-parse-cmd-args 'realgud:jdb-core)
(declare-function realgud:jdb-dot-to-slash   'realgud:jdb-core)

(assert-equal '("jdb" nil ("./TestMe.java"))
	      (realgud:jdb-parse-cmd-args '("jdb" "./TestMe.java")))
(assert-equal "mcb/pcingola/SnpEff/main"
	      (realgud:jdb-dot-to-slash "mcb.pcingola.SnpEff.main"))

(end-tests)