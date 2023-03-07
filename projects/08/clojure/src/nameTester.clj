;;;; nameTester.clj creates and tests a clojure Name type.
;;;;
;;;; Output: results of testing Name functions.
;;;;
;;;; Usage: clojure -m nameTester
;;;;
;;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;;; Completed by: Josiah Ryan
;;;; Date:         3/31/20
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns nameTester)   ; program name

;;; define a Clojure record named Name 
;;; (which compiles to a Java class).

(defrecord Name [firstName middleName lastName])


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; make-Name constructs a Name from three strings. 
;;; Receive: firstN, middleN and lastN, three strings.
;;; Return: the Name (firstN middleN lastN). 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn make-Name [firstName middleName lastName]
  (->Name firstName middleName lastName)        )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst() extracts the first name of a Name object.
;;; Receive: aName, a Name.
;;; Return: the firstName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn getFirst [^Name aName] (:firstName aName))    ; [^Name aName] specifies that aName can only be an object of type Name

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle() extracts the middle name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the middleName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn getMiddle [^Name aName] (:middleName aName))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast() extracts the last name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the lastName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn getLast [^Name aName] (:lastName aName))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; toString() returns a full name in F-M-L order. 
;;; Receive: aName, a Name. 
;;; Return: firstName, middleName, lastName,
;;;           separated by spaces. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn toString [^Name aName] (str (getFirst aName) " " (getMiddle aName) " " (getLast aName)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName() displays a name object.
;;; Receive: aName, a Name.
;;; Output: the strings in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn printName [^Name aName] (print (toString aName)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setFirst() recieves a new first name, and returns a modified Name object with the new first name
;;; Receive: aName, a Name; firstName, a string.
;;; Return: a modified Name object with the new first name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn setFirst [^Name aName firstName] (let [newName (make-Name firstName (getMiddle aName) (getLast aName) )] newName ))    ; [^Name aName] specifies that aName can only be an object of type Name

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setMiddle() recieves a new middle name, and returns a modified Name object with the new middle name
;;; Receive: aName, a Name; middleName, a string.
;;; Return: a modified Name object with the new middle name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn setMiddle [^Name aName middleName] (let [newName (make-Name (getFirst aName) middleName (getLast aName) )] newName ))    ; [^Name aName] specifies that aName can only be an object of type Name

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setLast() recieves a new last name, and returns a modified Name object with the new last name
;;; Receive: aName, a Name; lastName, a string.
;;; Return: a modified Name object with the new last name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn setLast [^Name aName lastName] (let [newName (make-Name (getFirst aName) (getMiddle aName) lastName )] newName ))    ; [^Name aName] specifies that aName can only be an object of type Name

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi() returns a string formated Name in last-first-middle inital order
;;; Receive: aName, a Name.
;;; Return: a string with lasName firstName (first initial of lastName)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lfmi [^Name aName] (str (getLast aName) " " (getFirst aName) " " (first (getMiddle aName)) ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readName() allows user to write in new values for firstName middleName lastName, and returns that name object
;;; Receive: aName, a Name.
;;; User input: firstName middleName lastName
;;; Return: a new Name object with the user inputed names
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn readName [^Name aName] 
  (println "Enter a new name") 
  (print "First name  > ") (flush)
  (let [ newFirst (read)]
    (print "Middle name  > ") (flush)
    (let [ newMiddle (read)]
      (print "Last name  > ") (flush)
      (let [ newLast (read)]
        (make-Name newFirst newMiddle newLast) ) ) ) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver to test our Name functions. 
;;; Output: the result of testing our Name functions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [                                          ; 3 ways to construct an object:
      name1 (make-Name "John" "Paul" "Jones")  ; -using our "make-" constructor
      name2 (->Name "Jane" "Penelope" "Jones") ; -invoking constructor directly
                                               ; -mapping field-names to values
      name3 (map->Name {:lastName "Jones" :firstName "Jinx" :middleName "Joy"})
    ]
    ;; ----- SECTION 1 -----
    (println)
    (print name1) (println)
    (assert (= (getFirst name1) "John") "getFirst(1) failed")
    (assert (= (getMiddle name1) "Paul") "getMiddle(1) failed")
    (assert (= (getLast name1) "Jones") "getLast(1) failed")
    (assert (= (toString name1) "John Paul Jones") "toString(1) failed")
    (printName name1) (println)
    ;; ----- SECTION 2 -----
    (println)
    (print name2) (println)
    (assert (= (getFirst name2) "Jane") "getFirst(2) failed")
    (assert (= (getMiddle name2) "Penelope") "getMiddle(2) failed")
    (assert (= (getLast name2) "Jones") "getLast(2) failed")
    (assert (= (toString name2) "Jane Penelope Jones") "toString(2) failed")
    (printName name2) (println)
    ;; ----- SECTION 3 -----
    (println)
    (print name3) (println)
    (assert (= (getFirst name3) "Jinx") "getFirst(3) failed")
    (assert (= (getMiddle name3) "Joy") "getMiddle(3) failed")
    (assert (= (getLast name3) "Jones") "getLast(3) failed")
    (assert (= (toString name3) "Jinx Joy Jones") "toString(3) failed")
    (printName name3) (println)
    
    ;;------ TEST MUTATORS ------
    (println)
    (assert (= (getFirst (setFirst name3 "Josiah")) "Josiah") "setFirst() failed") 
    (assert (= (getMiddle (setMiddle name3 "Israel")) "Israel") "setMiddle() failed")
    (assert (= (getLast (setLast name3 "Ryan")) "Ryan") "setLast() failed")
    (println "test Mutators passed!")

    ;;------ TEST LFMI ---------
    (println)
    ;(println (lfmi name3))
    (assert (= (lfmi name3) "Jones Jinx J") "lfmi() failed")
    (assert (= (lfmi name2) "Jones Jane P") "lfmi() failed")
    (assert (= (lfmi name1) "Jones John P") "lfmi() failed")
    (println "test lfmi passed!")

    ;;---- TEST READNAME ----
    (println)
    (println "Enter name 'Josiah Israel Ryan' to pass the test")
    (assert (= (toString (readName name3)) "Josiah Israel Ryan") "readName() failed")
    (println "test readName passed!")
    (println "\nAll tests passed!\n")
  )
)

