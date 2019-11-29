;;; Variant 3

(defun calculate_sets(arg) 
	(defun calculate_sets_rec(data)
		(if (= (list-length data) 1)
				(list(list (car data)))
				((lambda()(setf tmp (calculate_sets_rec (cdr data))) (setf tmp2 '()) (				
					loop for a in tmp do(
								 		 push (append (list (car data)) a) tmp2)
									 
					)
				(push tmp tmp2)
				(push (list (car data)) tmp2)
				 )
		)
	)
	)
	(calculate_sets_rec arg)
)

(format t "Result ~a !~%" (calculate_sets (list 1 2 3)))


