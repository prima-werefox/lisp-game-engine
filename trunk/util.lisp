;;;; Various utilities

; math

(defun random-range(min max)
  "a random value between min and max"
  (let ((diff (abs (- min max))))
    (+ min (random diff))))

(defun clamp(item min max)
  (if (> item max)
      max
    (if (< item min)
	min
      item)))

(defun sqr(n) 
  (* n n))

(defun rads-degs(rads) 
  (* rads (/ 360.0 (* 2 PI))))

(defun degs-rads(degs) 
  (* degs (/ (* 2 PI) 360.0)))

(defun atan2(x y) 
  "somewhat awful but tested and working atan2"
  (if (= y 0.0)
      (if (< x 0.0)
	  (+ PI (/ PI 2.0))
	(/ PI 2.0))
    (if (= x 0.0) 
	(if (> y 0.0)
	    0.0
	  PI)
      (let ((at (atan (/ x y))))
	(if (> x 0.0) 
	    (if (> y 0.0)
		at
	      (+ PI at))
	  (if (> y 0.0)
	      (+ PI PI at)
	    (+ PI at)))))))

;;;; graphics/sdl

(defun screen-center-x() 
  (ash *window-width* -1))

(defun screen-center-y() 
  (ash *window-height* -1))

;;;; color manipulation

(defun interp-sdl-color(c1 c2 scale)
  "interpolate between two sdl colors"
  (let ((cnew (sdl:color))
	(dr (- (sdl:r c2) (sdl:r c1)))
	(dg (- (sdl:g c2) (sdl:g c1)))
	(db (- (sdl:b c2) (sdl:b c1))))
    (setf (sdl:r cnew) (+ (sdl:r c1) (* scale dr)))
    (setf (sdl:g cnew) (+ (sdl:g c1) (* scale dg)))
    (setf (sdl:b cnew) (+ (sdl:b c1) (* scale db)))
    cnew))


(defun scale-sdl-color(color scale)
  "scale a color from 0 to 1"
  (let ((new-color (sdl:color)))
    (setf (sdl:r new-color) (* scale (sdl:r color)))
    (setf (sdl:g new-color) (* scale (sdl:g color)))
    (setf (sdl:b new-color) (* scale (sdl:b color)))
    new-color))

(defun half(x)
  "halve the value of x"
  (/ x 2))

(defun integer-in-range(num start end)
  (let ((int (floor num)))
    (max (min end int) start)))

;;;; todo this should go somewhere that should know about screen width and height

(defun sx(x)
  (integer-in-range x 0 640))

(defun sy(y)
  (integer-in-range y 0 480))

;;;; manage unique id's
(let ((next-id 0))
  (defun get-next-uid()
    "get the next unique id"
    (incf next-id)
    (1- next-id)))

(defun safe-nth(n lst)
  "get the nth member of a list. safely return nil
if n is out of bounds"
  (let ((len (length lst)))
    (if (or
	 (>= n len)
	 (< n 0))
	nil
	(nth n lst))))

(defmacro bind-var-fn((var param fn) &body body)
  `(let ((,var (funcall ,fn ,param)))
     ,@body))

(defmacro bind-list-var-fn(list fn)
)

(defmacro offset-list-iterator(offset-name-list lst)
"iterate over a list using an array of indices
which are offsets to the current item. out of bounds
indices return nil. at each iteration the symbols provided
are initialised with the item in the list offset by 
the amount you specify"
`(loop 
    for item in ,lst
    for n from 0 
    do
      (format t "~a ~a~%" n item)))
      

(defmacro test1(apple)
  (let ((var (gensym)))
    `(let ((,var ,apple))
       (1+ ,var))))

