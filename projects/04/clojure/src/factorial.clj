;;;; factorial.clj recieves an integer n and prints n!
;;;;
;;;; Input: n integer
;;;; Precondition: n is an integer
;;;; Output: n! (n * (n-1) * (n-2) * ... * 1) -- if n is positive
;;;;
;;;; Completed by: Josiah Ryan
;;;; Date: 3/3/21
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial)                                 ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; factorial() .
;;; Receive: n an integer and total - variable to be returned
;;; Precondition: n is an integer
;;; Output: n!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; loop (indirect-recursion) version
;(defn factorial [n total]
  ;(let
    ;[total 1]				; sets total (to be returned) to 1
    ;(loop [i 1]                           ; set i = 1
 ;     (when (>= n 1)                       ; if i <=
  ;      (* total n)			    ;will calculate n!
        ;(def i )	 			    ; increments i
;	(recur (- n 1) total)            ; recursive call
 ;      ) ; end when
     ;) ; end loop
   ;) ; end let [total 1]
  ; (+ total 0)
; ) ; end defn


(defn factorial [n total]
   (if (>= n 1)
       (factorial (- n 1) (* total n))		; if 
       total  	       	     	       	  	; else
   ) ; end if
   
) ; end defn 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the factorial function.
;;; Input: n.
;;; Output: n! 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (print "Enter an integer n, and recieve n!: ") (flush)
 (let
    [ n (int (read))
      total (int 1) ]
    ;[ n read ]						; recieves an input n
    (println)
    (printf "%s! = %s" n (factorial n total))  ;; prints out n! 
    (println)
 ) ; end let
) ; end defn


