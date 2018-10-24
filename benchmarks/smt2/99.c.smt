(set-logic LIA)

(declare-const y Int)
(declare-const y! Int)
(declare-const x Int)
(declare-const x! Int)
(declare-const n Int)
(declare-const n! Int)

(declare-const y_26 Int)
(declare-const y_19 Int)
(declare-const y_18 Int)
(declare-const x_25 Int)
(declare-const x_20 Int)
(declare-const x_17 Int)
(declare-const n_0 Int)

(define-fun inv-f((n Int)(x Int)(y Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((n Int)(x Int)(y Int)(n_0 Int)(x_17 Int)(x_20 Int)(x_25 Int)(y_18 Int)(y_19 Int)(y_26 Int)) Bool
  (and
    (= y y_18)
    (= x x_17)
    (= n n_0)
    (>= n_0 0)
    (= x_17 n_0)
    (= y_18 0)
  )
)

(define-fun trans-f ((n Int)(x Int)(y Int)(n! Int)(x! Int)(y! Int)(n_0 Int)(x_17 Int)(x_20 Int)(x_25 Int)(y_18 Int)(y_19 Int)(y_26 Int)) Bool
  (or
    (and
      (= x_25 x)
      (= y_26 y)
      (= y_26 y!)
      (= x_25 x!)
      (= y y!)
      (= n n!)
    )
    (and
      (= x_25 x)
      (= y_26 y)
      (> x_25 0)
      (= y_19 (+ y_26 1))
      (= x_20 (- x_25 1))
      (= y_19 y!)
      (= x_20 x!)
      (= n n!)
    )
  )
)

(define-fun post-f ((n Int)(x Int)(y Int)(n_0 Int)(x_17 Int)(x_20 Int)(x_25 Int)(y_18 Int)(y_19 Int)(y_26 Int)) Bool
  (or
    (not
      (and
        (= n n_0)
        (= x x_25)
        (= y y_26)
      )
    )
    (not
      (and
        (not (> x_25 0))
        (not (= n_0 (+ x_25 y_26)))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f n x y n_0 x_17 x_20 x_25 y_18 y_19 y_26 )
    (inv-f n x y )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f n x y )
      (trans-f n x y n! x! y! n_0 x_17 x_20 x_25 y_18 y_19 y_26 )
    )
    (inv-f n! x! y! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f n x y )
    (post-f n x y n_0 x_17 x_20 x_25 y_18 y_19 y_26 )
  )
))

