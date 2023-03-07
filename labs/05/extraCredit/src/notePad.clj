((fn [x y z] (max (Math/abs x) (Math/abs y) (Math/abs z))) 1 4 -7)
********************************
1b
((fn [x y z] (+ x y z)) 5 10 ((fn [x y z] (+ x y z)) 5 10 15))


   ((fn [x] (nil? x) ) 20)
   
   ((fn [] 17.2))

2a
(def squareSquare (fn [x] (* x x x x)))

(map Math/abs [-1 2 -3 4 -5])

(defn subtract-n [n sequence] (map (fn [x] (- x n)) sequence) )

(filter (fn [x] (or (neg? x) (odd? x))) [-1 1 -2 2 -3 3 -4 4])
(map (fn [x] (* x -1)) [1 -2 3 -4 5 -6 7 -8 9])

(defn totalItems [seqOfSeqs] (reduce + (map count seqOfSeqs)) )

(defn sumSquares [sequence] (reduce + (map (fn [x] (* x x)) sequence)))

(defn incMaker [incValue] (fn [x] (+ x incValue) ))

(defn greetingBuilder [greeting] (fn [visitor] (str greeting ", " visitor "!") ))






















