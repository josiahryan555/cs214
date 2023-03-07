;; Temp.clj is a module for our 'Temp' type-abstraction.
;;
;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;; Completed by: Josiah Ryan
;; Date:         04/07/2021
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Create a record/struct type named Temp
(defrecord Temp [myTemp myStep myType])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; isValid determines if a passed temp and type is valid (above absolute 0)
;;; Receive: aTemp, a Temp.
;;; Return: true if the passed temp and type is valid (above absolute 0) or false not valid
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn isValid [temp type]
  (if (or (= type 'k) (= type 'K))
    (if (< temp 0.0) false true)
    (if (or (= type 'c) (= type 'C))
      (if (< temp -273.15) false true)
      (if (or (= type 'f) (= type 'F))
        (if (< temp -459.67) false true) 
        false
      )
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; make-Temp constructs a Temp object from 2 Floats and a Char. 
;; Receive: myTemp, myStep (Float) and myType (Char).
;; Return: the Temp (myType myStep myType). 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Temp [myTemp myStep myType]
  (if (isValid myTemp myType)
    (->Temp myTemp myStep myType)
    (do 
      (println "invalid temp and type, object initialized to 0 k")
      (->Temp 0.0 myStep 'k)
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getTemp extracts myTemp and returns it.
;;; Receive: aTemp, a Temp.
;;; Return: myTemp Float in aTemp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getTemp [aTemp]
  (:myTemp aTemp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getStep extracts myStep and returns it.
;;; Receive: aTemp, a Temp.
;;; Return: myStep Float in aTemp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getStep [aTemp]
  (:myStep aTemp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getType extracts myType and returns it.
;;; Receive: aTemp, a Temp.
;;; Return: myType Char in aTemp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getType [aTemp]
  (:myType aTemp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setTemp recieves aTemp object, copies it, changes the myTemp field to the passed value and returns it.
;;; Receive: aTemp, a Temp.
;;; Return: a new temp object with the modfied temp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn setTemp [aTemp temp]
  (make-Temp temp (getStep aTemp) (getTemp aTemp))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setType recieves aTemp object, copies it, changes the myType field to the passed value and returns it.
;;; Receive: aTemp, a Temp.
;;; Return: a new temp object with the modfied type
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn setType [aTemp type]
  (make-Temp (getTemp aTemp) (getStep aTemp) type)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFahrenheit returns a copy of the passed temperature object converted to Fahrenheit
;;; Receive: aTemp, a Temp.
;;; Return: a copy of the Temp object passed converted to Fahrenheit
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getFahrenheit [aTemp]
  (if (or (= (getType aTemp) 'f) (= (getType aTemp) 'F))
    (make-Temp (getTemp aTemp) (getStep aTemp) 'f)
    (if (or (= (getType aTemp) 'c) (= (getType aTemp) 'C))
      (make-Temp (+ (* (getTemp aTemp) (/ 9.0 5.0)) 32.0) (getStep aTemp) 'f) 
      (make-Temp (+ (* (- (getTemp aTemp) 273.15) (/ 9.0 5.0)) 32.0) (getStep aTemp) 'f) ; aTemp.myType = kelvin
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getCelsius returns a copy of the passed temperature object converted to Celsius
;;; Receive: aTemp, a Temp.
;;; Return: a copy of the Temp object passed converted to Celsius
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getCelsius  [aTemp] 
   (if (or (= (getType aTemp) 'f) (= (getType aTemp) 'F))
    (make-Temp (* (- (getTemp aTemp) 32.0) (/ 5.0 9.0)) (getStep aTemp) 'c) 
    (if (or (= (getType aTemp) 'c) (= (getType aTemp) 'C))
      (make-Temp (getTemp aTemp) (getStep aTemp) 'c) 
      (make-Temp (- (getTemp aTemp) 273.15) (getStep aTemp) 'c) ; aTemp.myType = kelvin
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getKelvin returns a copy of the passed temperature object converted to Kelvin
;;; Receive: aTemp, a Temp.
;;; Return: a copy of the Temp object passed converted to Kelvin
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getKelvin  [aTemp] 
   (if (or (= (getType aTemp) 'f) (= (getType aTemp) 'F))
    (make-Temp (+ (* (- (getTemp aTemp) 32.0) (/ 5.0 9.0)) 273.15) (getStep aTemp) 'k) 
    (if (or (= (getType aTemp) 'c) (= (getType aTemp) 'C))
      (make-Temp (+ (getTemp aTemp) 273.15) (getStep aTemp) 'k) 
      (make-Temp (getTemp aTemp) (getStep aTemp) 'k) ; aTemp.myType = kelvin
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; inputTemp gets a user inputed temp and type and returns a modified version of the passed temp with the new temp and type
;;; Receive: aTemp, a Temp.
;;; Return: a copy of the passed temp object with the user inputed temp and type 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn inputTemp [aTemp]
  (let [ temp (float (read))
         type (read)]
    (if (isValid temp type) 
      (make-Temp temp (getStep aTemp) type)
      (do (println "Invalid temp and type passed to inputTemp(), Temp object not changed") aTemp)
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; outputTemp ouputs the passed Temp's myTemp and myType in form ('-90.3 f')
;;; Receive: aTemp, a Temp.
;;; Return: None
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn outputTemp [aTemp]
  (print (format "%.3f" (getTemp aTemp)))
  (print " ")
  (print (getType aTemp))
  (print "   ")
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; raise returns a copy of the passed Temp object raised by increment degrees (as long as the new Temperature is valid)
;;; Receive: aTemp, a Temp.
;;; Return: a copy of the passed Temp object raised by increment degrees (as long as the new Temperature is valid)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn raise [aTemp increment]
  (if (isValid (+ (getTemp aTemp) increment) (getType aTemp))
    (make-Temp (+ (getTemp aTemp) increment) (getStep aTemp) (getType aTemp) )
    (do (println "Raised temp was below absolute zero, temp not changed") aTemp)
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lower returns a copy of the passed Temp object lowered by increment degrees (as long as the new Temperature is valid)
;;; Receive: aTemp, a Temp.
;;; Return: a copy of the passed Temp object lowered by increment degrees (as long as the new Temperature is valid)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lower [aTemp increment]
  (if (isValid (- (getTemp aTemp) increment) (getType aTemp))
    (make-Temp (- (getTemp aTemp) increment) (getStep aTemp) (getType aTemp) )
    (do (println "Raised temp was below absolute zero, temp not changed") aTemp)
  )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; equals returns true if temp1.myType = temp2.myType  and  temp1.myTemp = temp2.myTemp 
;;; Receive: temp1, temp2, Temp(s).
;;; Return: true if temp1.myType = temp2.myType  and  temp1.myTemp = temp2.myTemp   false otherwise
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn equals [temp1 temp2]
  (if (= (getType temp1) (getType temp2))
    (if (= (getTemp temp1) (getTemp temp2))
      true
      false
    )
    false
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lessThan returns true if temp1 < temp2 
;;; Receive: aTemp, a Temp.
;;; Return: true if temp1 < temp2, false otherwise
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lessThan [temp1 temp2]
  (< (getTemp (getCelsius temp1)) (getTemp (getCelsius temp2)))
)


