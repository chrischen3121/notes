(defconst *num-players* 2)
(defconst *max-dice* 3)
(defconst *board-size* 2)
(defconst *board-hexnum* (* *board-size* *board-size*))

(defun board-array (lst)
  (vconcat lst))

(defun gen-board ()
  (board-array (loop for n below *board-hexnum*
                     collect (list (random *num-players*)
                                   (1+ (random *max-dice*))))))

(defun player-letter (n)
  (decode-char 'ascii (+ 97 n)))

(defun draw-board (board)
  (loop for y below *board-size*
        do (progn (loop repeat (- *board-size* y)
                        do (princ " "))
                  (loop for x below *board-size*
                        for hex = (aref board (+ x (* *board-size* y)))
                        do (format "%c-%c " (player-letter (first hex))
                                   (second hex))))))

(draw-board (gen-board))
