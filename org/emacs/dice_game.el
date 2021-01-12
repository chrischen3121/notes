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

(gen-board)
