;;; Varient 4
(defun check_symbol (a b)
	(if(char= a b) t
		nil
	)
)


(defun first_check(value pos a b)
	(if (char= (char value pos) a) (check_second (length value) value pos b)
		nil
	)
)

(defun check_second (len value pos c)
	(if (< (+ 2 pos) len) (check_symbol c (char value (+ pos 2)))
		value
	)
)

(defun control(value pos a b)
	(if (first_check value pos a b) (remove (char value (+ pos 1)) value :start pos :end (+ pos 2))
		value
	)
)

(defun iterate(value a b)
			(setf len (length value))
			(setf pos t)
			(setf index 0)
		
			(loop while pos do
									(progn (setf value (control value index a b)) (setf index (+ index 1) )  (when (= (length value) index )  (setf pos nil) ) )    

			)
			value
)

(print (iterate "1234556781234193" #\1 #\3))
