Script started on 2021-02-10 13:31:44-0500
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ cat rectangle_area.clj
cat: rectangle_area.clj: No such file or directory
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ cat 01/ret ctangle_area/ .clj
cat: 01/rectangle_area.clj: No such file or directory
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ cat 01/rectangle_area.clj [1@/
cat: /01/rectangle_area.clj: No such file or directory
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ cd    cat /01/rectangle_area.clj[1P[1P[1@s[1@c[1@r[1P[1P[1@r[1@ce/rectangle_area.clj [A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ cat /srce[1P
[K[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ cat /src
cat: /src/rectangle_area.clj: No such file or directory
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ ls
script.clj  [0m[01;34msrc[0m
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ cd src
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure/src[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure/src[00m$ cd src[4Plscat /src/rectangle_area.cclj[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure/src[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure/src[00m$ cat /01/rectangle_area.cl[1Pj[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure/src[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure/src[00m$ cat 01/rectangle_area.clj[K[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure/src[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure/src[00m$ cat [2Prectangle_area.clj
[K[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure/src[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure/src[00m$ cat rectangle_area.clj
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
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure/src[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure/src[00m$ clojure -m rectanlg   g ngle                    cd ..
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ cd ..at rectangle_area.cljd src[K[4Plscat /src/rectangle_area.clj[1P01/rectangle_area.clj[1P01/rectangle_area.clj[3Prectangle_area.clj[6P./rectangle_areacat rectangle_area.abdvim RectangleArea.javals[Kvim RectangleArea.javacat rectangle_area.abd[6P./rectangle_areacat rectangle_area.clj[3@01/rectangle_area.clj[3Prectangle_area.clj[6P./rectangle_areacat rectangle_area.clj[3@01/rectangle_area.clj[1@/01/rectangle_area.clj[1@src/rectangle_area.cljls[Kcd srcat rectangle_area.cljd src[K[4Plscat /src/rectangle_area.clj[1P01/rectangle_area.clj[1P01/rectangle_area.clj[3Prectangle_area.clj[6P./rectangle_areacat rectangle_area.abdvim RectangleArea.javals[Kcd /home/jr232/Desktop/cs214//projects/01[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ javac -deprecation RectangleA[3Prea.java[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ javac -deprecation SourceFile[1@Name.java[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ javac -deprecation RectangleA[1Prea.java[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ cd /home/jr232/Desktop/cs214/projects/01[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ ls[K
[K[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ lsvim RectangleArea.javacat rectangle_area.abd[6P./rectangle_areacat rectangle_area.clj[3@01/rectangle_area.clj[1@/01/rectangle_area.clj[1@src/rectangle_area.cljls[Kcd srcat rectangle_area.cljd ..[K[Kcd ..at rectangle_area.cljd src[K[4Plscat /src/rectangle_area.clj[1P01/rectangle_area.clj[1P01/rectangle_area.clj[3Prectangle_area.clj[6P./rectangle_areacat rectangle_area.clj[3@01/rectangle_area.clj[1@/01/rectangle_area.clj[1@src/rectangle_area.cljls[Kcd srcat rectangle_area.cljd ..[K[Kclojure -m rectangle_area

To compute the area of a rectangle,
 enter its length: 5

enter its width: 3.4

The area is 17.000000


The area is 17.0


The area is 17.000000000000000

]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ clojure -m rectangle_area

To compute the area of a rectangle,
 enter its length: 3.33432

enter its width: 2

The area is 6.668640


The area is 6.66864


The area is 6.668640000000000

]0;jr232@goldvm19: ~/Desktop/cs214/projects/01/clojure[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01/clojure[00m$ exit

Script done on 2021-02-10 13:34:33-0500
