;; search.clj tests a function to search a list for a specified value.
;;
;; Output: three lists, and 
;;          the results of calling a searchList() function on them.
;;
;; Usage: clojure -m search
;;
;; Begun by: Dr. Adams, CS 214 at Calvin College.
;; Completed by:  Josiah Ryan
;; Date:          04/16/21
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns search)

(load "listOps")                      ; load module

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Function -main tests function listSearch(). 
;; Output: the results of testing listSearch() on various lists.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [ 
      list1 '(99 88 77 66 55)        ; 99 is first value
      list2 (list 55 66 77 88 99)    ; 99 is last value
      list3 (list 55 77 99 88 66)    ; 99 is middle value
      emptyList '()                  ; list is empty
    ]

    (println)
    (println "list1: " list1)        ; print list1,
    (println "list2: " list2)        ;   list2,
    (println "list3: " list3)        ;   list3,
    (println "empty: " emptyList)    ;   list3,
    (println)                        ;   and their maxima
    (println "The index of value 99 in list1 is: " (listSearch list1 99))
    (println "The index of value 99 in list2 is: " (listSearch list2 99))
    (println "The index of value 99 in list3 is: " (listSearch list3 99))
    (println)
    (println "The index of value 99 in an empty list is: " (listSearch emptyList 99))
    (println)
  )
)

