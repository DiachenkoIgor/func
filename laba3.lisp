;;; Variant 4


(defun calculate_function(func start end stepTo operation)
	(let* ((tmp 0)))
	(setq tmp (funcall func start))
	(setq start (+ start 1))
	(loop for i from start to end by stepTo
			do(progn (setq tmp (funcall operation tmp (funcall func i)))) 
	)
	tmp
)

(format t "Factorial ~a !~%" (calculate_function 
	(lambda (value) (+ value 0))
	  1 4 1 (lambda (value1 value2)(* value1 value2)))
)
(format t "Leibniz ~F !~%" (* 4 (calculate_function 
	(lambda (value) (/ (expt -1 value) (+ 1 (* 2 value))))
	  0 100 1 (lambda (value1 value2)(+ value1 value2)))) 
)