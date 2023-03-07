Script started on 2021-03-17 14:14:37-0400
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06/clojure[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06/clojure[00m$ cat / src/quadratic.clj
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
        (vector (float (/ (+ (- 0 b) (Math/sqrt arg))(* 2 a))) (float (/ (- (- 0 b) (Math/sqrt arg)) (* 2 a)))) 
        (do (print "\n*** getRoots(): b^2 - 4ac is negative!\n") (vector 0.0 0.0)) ; if (arg >= 0)  else
      )
    )
      ;else
    (do  (print "\n*** getRoots(): a is zero!")  (vector 0.0  0.0)) ; else
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
	   ]
      ; display the parts
      (printf (str "\nThe roots are: \n %s\n " 
                    "%s \n")
                       root1 root2)

      )
    )
  )
)

]0;jr232@goldvm10: ~/Desktop/cs214/projects/06/clojure[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06/clojure[00m$ clojure quad    -m quadratic
Enter a quadratic equation of form 'ax^2 + bx + c': 
Enter a:3
Enter b:1
Enter c:8

*** getRoots(): b^2 - 4ac is negative!

The roots are: 
 0.0
 0.0 
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06/clojure[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06/clojure[00m$ clojure -m quadratic
Enter a quadratic equation of form 'ax^2 + bx + c': 
Enter a:0
Enter b:5
Enter c:9

*** getRoots(): a is zero!
The roots are: 
 0.0
 0.0 
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06/clojure[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06/clojure[00m$ clojure -m quadratic
Enter a quadratic equation of form 'ax^2 + bx + c': 
Enter a:1
Enter b:5
Enter c:6

The roots are: 
 -2.0
 -3.0 
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06/clojure[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06/clojure[00m$ clojure -m quadratic
Enter a quadratic equation of form 'ax^2 + bx + c': 
Enter a:6
Enter b:11
Enter c:-35

The roots are: 
 1.6666666
 -3.5 
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06/clojure[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06/clojure[00m$ exit

Script done on 2021-03-17 14:15:58-0400
