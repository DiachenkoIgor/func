(defun add (p1 p2)
  (do ((sum '())) ((and (endp p1) (endp p2)) (nreverse sum))
    (let ((pd1 (if (endp p1) -1 (caar p1)))
          (pd2 (if (endp p2) -1 (caar p2))))
      (multiple-value-bind (c1 c2)
          (cond
           ((> pd1 pd2) (values (cdr (pop p1)) 0))
           ((< pd1 pd2) (values 0 (cdr (pop p2))))
           (t  (values (cdr (pop p1)) (cdr (pop p2)))))
        (let ((csum (+ c1 c2)))
          (unless (zerop csum)
            (setf sum (acons (max pd1 pd2) csum sum))))))))
 