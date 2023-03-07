;;; array_processing is a class that provides two methods: printArray and readArray
;;; 
;;; Completed by: Josiah Ryan
;;; Date        : 03/22/21
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns array_processing)      ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printArray prints the array passed to it
;;; Receive:  an array 
;;; Does   :  prints the array
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn printArray [array, index]             ; index moves through the array pointing to the next item to be printed
  (if (> (count array) index)               ; checks if the array has been fully traversed
    (do 
      (printf "%s\n" (get array index))     ; prints the array item
      (printArray array (+ index 1))        ; calls itself as form of looping
      ))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readArray prompts user for the values to store into the array
;;; Receive: 	an array 
;;; Does   :  Stores user inputed values into the array
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn readArray [size, array]
  (let [ arraySize (count array) ]
    (if (not= arraySize size)  ; array is not full yet
      (do 
        (print "  >") (flush)
        (let [ item (float (read)) ]
          (readArray size (conj array item))))     ; recursivly calls readArray until the array has been filled with user inputs
      array                                        ; returns the filled array
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function
;;; Input: size of array
;;; Output: printed array (through the function printArray)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
  (print "Enter the size of the array: ") (flush)
  (let [ size (read)                      ; read the string
         array (vector)  ]

    (print "Enter the array values:\n") (flush)
    (printArray (readArray size array) 0)        ; calls readArray, and printArray on that user inputed array
  )
)

