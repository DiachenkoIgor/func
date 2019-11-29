;;;; Variant 4
(print "Please A:")

(defvar *A* (read))

(terpri)

(print "Please B:")

(defvar *B* (read))

(terpri)


(print "Please D:")

(defvar *D* (read))

(terpri)


(print "Please C:")

(defvar *C* (read))

(terpri)

(format t "Result ~a !~%" 
	(+ (* (* 2 *A*) (sin (* 2 *B*))) 
		(* *D* (expt *C* 0.5))
	)
)