;;;; New pong sprites

; A sprite def tells the engine everything it needs to know about a sprite. 
; What bmp file it comes from, what the transparent colour is, and a set of 
; numbered or named frames with x1y1 and x2y2settings (ie where it starts 
; and where it ends on the image)

(defparameter ball-sprite-frames
  (list (sprites::make-sprite-def-frame :name 'frame-1 :x1 0 :y1 0 :x2 31 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-2 :x1 32 :y1 0 :x2 63 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-3 :x1 64 :y1 0 :x2 95 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-4 :x1 96 :y1 0 :x2 127 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-5 :x1 128 :y1 0 :x2 159 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-6 :x1 160 :y1 0 :x2 191 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-7 :x1 192 :y1 0 :x2 223 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-8 :x1 224 :y1 0 :x2 255 :y2 31 :xoff 16 :yoff 16)))

(defparameter ball-sprite
  (sprites::make-sprite-def 
   :bmp-file (sdl:create-path "invincibility_pickup.bmp" cl-user::*bmp-path*) 
   :background-colour (sdl:color :r 255 :g 0 :b 255)
   :frames ball-sprite-frames))

(defparameter left-bat-frames
  (list (sprites::make-sprite-def-frame :name 'frame-1 :x1 0 :y1 0 :x2 31 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-2 :x1 32 :y1 0 :x2 63 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-3 :x1 64 :y1 0 :x2 95 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-4 :x1 96 :y1 0 :x2 127 :y2 31 :xoff 16 :yoff 16)))

(defparameter left-bat-sprite
  (sprites::make-sprite-def 
   :bmp-file (sdl:create-path "wheelie_right.bmp" cl-user::*bmp-path*) 
   :background-colour (sdl:color :r 255 :g 0 :b 255) 
   :frames left-bat-frames))

(defparameter right-bat-frames
  (list (sprites::make-sprite-def-frame :name 'frame-1 :x1 0 :y1 0 :x2 31 :y2 31 :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-2 :x1 32 :y1 0 :x2 63 :y2 31  :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-3 :x1 64 :y1 0 :x2 95 :y2 31  :xoff 16 :yoff 16)
	(sprites::make-sprite-def-frame :name 'frame-4 :x1 96 :y1 0 :x2 127 :y2 31  :xoff 16 :yoff 16)))

(defparameter right-bat-sprite
  (sprites::make-sprite-def 
   :bmp-file (sdl:create-path "wheelie_left.bmp" cl-user::*bmp-path*) 
   :background-colour (sdl:color :r 255 :g 0 :b 255) 
   :frames right-bat-frames))

