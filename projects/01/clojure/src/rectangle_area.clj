;;;; rectangle_area.clj calculates the area of a rectangle.
;;;;
;;;; Input: The length and width of a rectangle.
;;;; Output: The area of that rectangle.
;;;;
;;;; Usage: clojure -m rectangle_area
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Josiah Ryan
;;;; Date: feb/10/21
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rectangle_area) ; namespace function names the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function rectangleArea() computes the area of a rectangle.
;;; Receive: itsLength and itsWidth, numbers.
;;; Precondition: itsLength and itsWidth >= 0.0.
;;; Return: the area of the corresponding rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn rectangleArea [itsLength, itsWidth]
  (* itsLength itsWidth)  ; itsLength * itsWidth
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main is where execution begins
;;; Input: the radius of a rectangle.
;;; Output: the area of that rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "\nTo compute the area of a rectangle,")
  (print   " enter its length: ") (flush)
  (let
    [ length (read) ]
    (assert (>= length 0) "-main: length must be positive") 
    (print  "\nenter its width: ") (flush)
    (let
      [ width (read) ]
      (assert (>= width 0) "-main: radius must be positive")
      (printf "\nThe area is %f\n\n" (rectangleArea (double length) (double width)))

      (print "\nThe area is ")
      (print (rectangleArea (double length) (double width)))
      (print "\n\n")

      (printf "\nThe area is %.15f\n\n" (rectangleArea (double length) (double width)))
    )
  )
)  
