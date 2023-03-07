;;;; quadratic.clj recieves a quadratic equation and returns its roots.
;;;;
;;;; Input: ints: a, b, c (of form ax^2 + bx + c) 
;;;; Output: the roots when inputed into the above equations
;;;;
;;;; Completed by: Josiah Ryan
;;;; Date: 03/15/21
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns quadratic)      ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getRoots() gets roots for quadratic equation 
;;; Receive: ints a, b, c 
;;; PRE: a > 0, (b^2 - 4ac) is not negative
;;; Return: a vector with the roots in it
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn getRoots [a b c]
  (if (not= a 0)
    (let [arg (- (* b b) (* 4 a c))]
      (if (>= arg 0)
        (vector (float (/ (+ (- 0 b) (Math/sqrt arg))(* 2 a))) (float (/ (- (- 0 b) (Math/sqrt arg)) (* 2 a))) 1.0) 
        (do (print "\n*** getRoots(): b^2 - 4ac is negative!\n") (vector 0.0 0.0 0.0)) ; if (arg >= 0)  else
      )
    )
      ;else
    (do  (print "\n*** getRoots(): a is zero!\n")  (vector 0.0  0.0 0.0)) ; else
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function
;;; Input: ints a, b, c from 'ax^2 + bx + c'
;;; Output: the roots of the quadratic equation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
  (print "Enter a quadratic equation of form 'ax^2 + bx + c': ") (flush)
  (print "\nEnter a:") (flush)
  (let [ a (read) ]                      ; read the string
    (print "Enter b:") (flush)
    (let [ b (read) ]
      (print "Enter c:") (flush)
      (let [ c (read)
             result (getRoots a b c)	 ; calculate the roots
             root1 (get result 0)    	  	 ; store root1
	           root2 (get result 1)		 ; store root1
             valid (get result 2)     ; gets the 3rd item of the vector: 1 if there was no error, 0 if there was
	   ]
      ; display the parts
        (if (= valid 1.0)    ; only displays the roots if valid roots were returned (no errors)
          (printf (str "\nThe roots are: \n %s\n " "%s \n")  root1 root2)
        )
      )
    )
  )
)

