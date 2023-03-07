;;;; functions.clj defines and executes several examples of code for CS214 project05
;;;;
;;;; Author: Josiah Ryan
;;;; Date: 3/8/21
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns functions)

;; parameter : takes in a list
;; Returns   : a reversal of that list
(defn my-reverse [sequence]
	(if (< (count sequence) 2)
	  sequence ; if true
	  (do  ; if false
	    (let [item (list (first sequence))] ; sets first to sequence[0]
	      (concat (my-reverse (rest sequence)) item)    ; appending of item back onto sequence
	    ))))

;; parameter : takes in a list
;; Returns   : a reversal of that list & reverses any nested lists
(defn super-reverse [sequence]
 (if (< (count sequence) 2)
   (if (list? (first sequence)) (list (super-reverse (first sequence))) sequence) ; end if (list?)
   ;else (if count < sequence)
   (do                              ; count > 2 (else)
     (if (list? (first sequence))
       (concat (super-reverse (rest sequence)) (list (my-reverse (first sequence))) )  ;if true

       ;else (list?)
       (do 	      		  	                        ;if false
         (let [item (list (first sequence))] ; sets first to sequence[0]
         (concat (super-reverse (rest sequence)) item) ; appending of item back onto sequence
	    ))))))

;; parameters : element, sequence (list)
;; returns : true (if element is in sequence) false (if element is not in sequence)
(defn member? [element sequence]
  (if (list? sequence)
    (if (= (count sequence) 0) ; sequence is a list
      false
      (do     ; sequence is a non-empty list
        (if (= (first sequence) element)
	  true                    ; first is 'element', returns true
	  (member? element (rest sequence))  ; first is not 'element'
	)))false))

;; Paramaters: sequence (a list) i and j (ints)
;; Requirments: i <=  j, i >= 0, j <= (count sequence) 
;; Return: the elements at index i through j
(defn subsequence2 [ sequence i j ]
  (if (or (> i j) (< i 0) (>= (+ j i) (count sequence)) (= (count sequence) 0))
    nil  ; invalid case
    ;(let [ element i returnSequence (list)]
      (loop [element i
      	    returnSequence (list)]
	(if (<= element j)
          (recur (+ element 1) (concat returnSequence (list (nth element sequence))))
	  returnSequence   ; else
	))))

;; Input: sequence (list), i and j (ints)
;; Requirements:  0 < i < size of sequence, j >= 0
;; Returns: j items at and after index i in sequence
(defn subsequence [sequence i j]
  (if (or (< i 0) (< j 0) (empty? sequence) ) nil ; returns nil if a bad case   ;(< (count sequence) (i + j))
    (if (> i 0) (subsequence (rest sequence) (- i 1) j)
      (if (> j (count sequence)) nil
        (if (< j (count sequence)) (subsequence (drop-last sequence) i j)
      sequence)))))


(defn -main []
  ; testing my-reverse
  (println "testing (my-reverse '(a b (c d) (e (f g)))): " )
  (println "expecting: ((e (f g)) (c d) b a)")
  (println "get      :" (my-reverse '(a b (c d) (e (f g)))) )
  (println "expecting: ()")
  (println "get      :" (my-reverse '()))
  (println)
  ; testing super-reverse
  (println "testing (super-reverse '(a b (c d) (e (f g))))")
  (println "expecting: (((g f) e) (d c) b a)")
  (println "get      :" (super-reverse '(a b (c d) (e (f g)))))
  (println "expecting: ((d c) b a)" )
  (println "get      :" (super-reverse '(a b (c d))))
  (println "expecting:" (super-reverse '()))
  (println "get      : ()" )
  (println)
  ; testing member?
  (println "testing (member?):")
  (println "expecting 3 trues")
  (println  (member? '(1 2) '((1 2) 3 (4 (5 6)))) )
  (println  (member? 3 '((1 2) 3 (4 (5 6)))) )
  (println  (member? '(4 (5 6)) '((1 2) 3 (4 (5 6)))) )
  (println "expecting 4 falses")
  (println  (member? 1 '((1 2) 3 (4 (5 6)))) )
  (println  (member? 2 '((1 2) 3 (4 (5 6)))) )
  (println  (member? 4 '((1 2) 3 (4 (5 6)))) )
  (println  (member? 4 '()) )
  (println)
  ; testing subsequence
  (println "testing (subsequence)")
  (println "expecting : (2 (3 4))")
  (println "get       :" (subsequence '(1 2 (3 4) (5 (6 7))) 1 2) )
  (println "expecting : (3 4 5 6)")
  (println "get       :" (subsequence '(1 2 3 4 5 6 7) 2 4) )
  (println "expecting : nil")
  (println "get       :" (subsequence '(1 2 3 4 5 6 7) 2 90) )
  (println "expecting : nil")
  (println "get       :" (subsequence '() 1 4 ))
        
); end defn