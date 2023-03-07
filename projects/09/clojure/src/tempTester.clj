;; tempTester.clj tests a Clojure Temp type,
;;  stored in Temp.clj (in the src directory).
;;
;; Output: the results of testing the Temp functions.
;;
;; Usage: clojure -m tempTester
;;
;; Begun by: Prof. Adams, CS 214 at Calvin College.
;; Completed by: Josiah Ryan  
;; Date:         04/07/2021
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns tempTester)

(load "Temp")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; A simple driver to test our Temp functions. 
;; Output: the results of testing our Temp functions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [      
      temp1 (make-Temp 101.0 10.0 'f)    ; -using our "make-" constructor
      temp2 (make-Temp 100.0 10.0 'c)    ; -using our "make-" constructor
      temp3 (make-Temp -1.0 10.0 'f)    ; -using our "make-" constructor
      temp4 (make-Temp -1.0 10.0 'f)    ; -using our "make-" constructor
    ]

  (println (getTemp temp1) (getType temp1) (getStep temp1))
  (println (getCelsius temp2))
  (println (getFahrenheit temp2))
  (println (getKelvin temp2))
  (assert (= (getTemp temp3) -1.0) "getTemp(temp3) failed")
  (assert (= (getType temp3) 'f) "getType(temp3) failed")

 
  ;output table
    (println)
    (println "Enter the base temperature first, the destination temperature second, and the increment value last")
    (let [temp1 (inputTemp temp1)
          temp2 (inputTemp temp2)
          increment (read)]

      (if (lessThan temp1 temp2)
        (loop [temperature temp1]
          (when ( or (lessThan temperature temp2) (equals temperature temp2))

            (outputTemp (getFahrenheit temperature))
            (outputTemp (getCelsius temperature))
            (outputTemp (getKelvin temperature))
            (println)

            (if (isValid (+ (getTemp temperature ) increment) (getType temperature))  ; only recurs if the decremented value is not below absolute zero
              (recur (raise temperature increment)) 
            )
          )
        )

        ; temp1 > temp2  so temp1 will be lowered instead of raised
        (loop [temperature temp1]  
          (when ( or (lessThan temp2 temperature) (equals temperature temp2))
            (outputTemp (getFahrenheit temperature))
            (outputTemp (getCelsius temperature))
            (outputTemp (getKelvin temperature))
            (println)
            (if (isValid (- (getTemp temperature ) increment) (getType temperature))  ; only recurs if the decremented value is not below absolute zero
              (recur (lower temperature increment)) 
            )
          )
        )
      )

      (println "\nAll tests passed!\n")
    )
  )
)


