;; listOps.clj is a Clojure "module" for list operations.
;;
;; Begun by: Prof. Adams, CS 214 at Calvin College.
;; Completed by:  Josiah Ryan
;; Date:          04/16/21
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; maxOf2() finds the maximum of two values.  
;; Receive: val1, val2, two values.  
;; PRE: val1 and val2 can be compared using >.
;; Return: the maximum of val1 and val2. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn maxOf2 [val1 val2]
  (if (> val1 val2)      ; if val1 > val2
    val1                 ;   return val1
    val2                 ; else return val2
  )
)

;; using Clojure's built-in max and apply functions
(defn listMax2 [aList]
  (if (list? aList)       ; if aList is a list:
    (if (empty? aList)    ;  if aList is empty:
      nil                 ;    nil
      (apply max aList)   ;  else apply max to 
    )                     ;        the items in aList
  )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; indexSearch() is the internal component of listSearch. 
;; Receive: aList, a list of values; aValue, an integer; index, start of index search (usually 0).    
;; PRE: aList is a list 
;;      values in aList can be compared using >.
;; Return: the index of the specified value in aList, or -1 if aValue is not in the list      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn indexSearch [list aValue index]
  (if (> (count list) 0 )
    (let [ val (first list) ]
      (if (= val aValue)
        index
        (indexSearch (rest list) aValue (+ index 1))
      )
    )
    nil
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; listSearch() is a wrapper function for indexSearch. 
;; Receive: aList, a list of values; aValue, an integer.    
;; PRE: aList is a list 
;;      values in aList can be compared using >.
;; Return: the index of the specified value in aList, or -1 if aValue is not in the list        
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn listSearch [aList aValue]
  (if (list? aList) 
    (indexSearch aList aValue 0)
  )
)