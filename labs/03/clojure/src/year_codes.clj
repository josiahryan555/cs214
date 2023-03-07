;;;; year_codes.clj is a driver for function yearCode.
;;;;
;;;; Input: An academic year, one of {freshman, sophomore,
;;;;                                  junior, senior}.
;;;; Output: The code for that academic year
;;;;         (1, 2, 3, 4 for valid entries; 
;;;;          0 for invalid entries).
;;;;
;;;; Usage: clojure -m year_codes
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Josiah Ryan	
;;;; Date: 02/19/21
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns year_codes)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; yearCode() returns the code for a given academic year.
;;; Receive: year, a string.
;;; Precondition: year is one of 
;;;   {freshman, sophomore, junior or senior}.
;;; Return: the integer code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn yearCode [year]
  "Receive: year, a string.
   Precondition: year is one of {freshman, sophomore, junior, senior}.
   Return: The integer code corresponding to year (1, 2, 3 or 4)."
  (if (= year "freshman") 1 (if (= year "sophomore") 2 (if (= year "junior") 3 (if (= year "senior") 4))))
)
  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our yearCode() function.
;;; Input: year: one of {freshman, sophomore, junior, or senior}.
;;; Output: the code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
 (print "\nEnter your academic year: ") (flush)
 (let
    [ year (read-line) ]                ; read year (a string)
    (println (yearCode year) "\n")      ; display its code
 )
)

