Script started on 2021-02-24 13:35:49-0500
]0;jr232@goldvm16: ~/Desktop/cs214/projects/03/clojure/src[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03/clojure/src[00m$ cat   t grade_calc.clj    .clj
;;;; grade_calc.clj is a driver for function gradeCalc.
;;;;
;;;; Input:  A grade out of 100
;;;; Output: The letter grade cooresponding to that number grade
;;;;
;;;; Usage: clojure -m grade_calc
;;;;
;;;; Author: Josiah Ryan
;;;; Date: 02/24/21
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns grade_calc)			; name of the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; gradeCalc() returns the letter grade corresponding to the given integer grade.
;;; Receive: grade, an int.
;;; Precondition: grade is between 0 and 100
;;; Return: the letter grae corresponding to the int grade given
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn gradeCalc [grade]
  ;(cond ((== (quot grade 10) 10) 'A'))
  (cond (== (quot grade 10) 10) 'A   ; quot is division
        (== (quot grade 10) 9)  'A
	(== (quot grade 10) 8)  'B
	(== (quot grade 10) 7)  'C
	(== (quot grade 10) 6)  'D
	:else         'F
  )
)

(defn parse-int [s]
   (Integer. (re-find  #"\d+" s )))

(defn -main []
 (print "\nEnter your numeric grade: ") (flush)
 (let
   [ grade (read-line) ]		; reads grade (a string)
   (println "Your letter grade is: " (gradeCalc (parse-int grade)) "\n") 	;display the letter grade
 )
)]0;jr232@goldvm16: ~/Desktop/cs214/projects/03/clojure/src[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03/clojure/src[00m$ clo   cd ..
]0;jr232@goldvm16: ~/Desktop/cs214/projects/03/clojure[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03/clojure[00m$ clojure -m grade_calc

Enter your numeric grade: 100
Your letter grade is:  A 

]0;jr232@goldvm16: ~/Desktop/cs214/projects/03/clojure[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03/clojure[00m$ clojure -m grade_calc
99
Enter your numeric grade: 
Your letter grade is:  A 

]0;jr232@goldvm16: ~/Desktop/cs214/projects/03/clojure[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03/clojure[00m$ clojure -m grade_calc

Enter your numeric grade: 87
Your letter grade is:  B 

]0;jr232@goldvm16: ~/Desktop/cs214/projects/03/clojure[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03/clojure[00m$ clojure -m grade_calc

Enter your numeric grade: 76
Your letter grade is:  C 

]0;jr232@goldvm16: ~/Desktop/cs214/projects/03/clojure[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03/clojure[00m$ clojure -m grade_calc

Enter your numeric grade: 65
Your letter grade is:  D 

]0;jr232@goldvm16: ~/Desktop/cs214/projects/03/clojure[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03/clojure[00m$ clojure -m grade_calc

Enter your numeric grade: 43
Your letter grade is:  F 

]0;jr232@goldvm16: ~/Desktop/cs214/projects/03/clojure[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03/clojure[00m$ exit

Script done on 2021-02-24 13:37:10-0500
