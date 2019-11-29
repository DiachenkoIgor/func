;;;; Variant 5 

(print "Please number:")

(defvar *number* (read))

(defun number_sum(value)
	(defun number_sum_rec(value_tmp tmp)
		(if (< value_tmp 1)
				0
				(+ (+ tmp (mod value_tmp 10)) (number_sum_rec (truncate (/ value_tmp 10)) tmp))
			 )
		)
	(number_sum_rec value 0)

)


(defun number_quantity(value)
	(defun number_quantity_rec(value_tmp tmp)
		(if (< value_tmp 1)
				0
				(+ (number_quantity_rec (truncate (/ value_tmp 10)) tmp) 1)
			 )
		)
	(number_quantity_rec value 0)

)
(defun max_number(value)
	(defun max_number_rec(value_tmp tmp)
		(if (< value_tmp 1)
				tmp
			(if(> (mod value_tmp 10) tmp) (max_number_rec (truncate (/ value_tmp 10)) (mod value_tmp 10))  
					(max_number_rec (truncate (/ value_tmp 10)) tmp)
			)
		)
	)
	(max_number_rec value 0)

)
(defun min_number(value)
	(defun min_number_rec(value_tmp tmp)
		(if (> value_tmp 1)
				tmp
			(if(> (mod value_tmp 10) tmp) (min_number_rec (truncate (/ value_tmp 10)) (mod value_tmp 10))  
					(min_number_rec (truncate (/ value_tmp 10)) tmp)
			)
		)
	)
	(min_number_rec value 1)

)

(format t "Number sum ~a !~%" (number_sum *number*))
(format t "Number quantity ~a !~%" (number_quantity *number*))
(format t "Max number ~a !~%" (max_number *number*))
(format t "Min number ~a !~%" (min_number *number*))