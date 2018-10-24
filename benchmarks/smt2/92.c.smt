(set-logic LIA)

(declare-const y Int)
(declare-const y! Int)
(declare-const x Int)
(declare-const x! Int)

(declare-const y_20 Int)
(declare-const y_15 Int)
(declare-const y_14 Int)
(declare-const x_13 Int)

(define-fun inv-f((x Int)(y Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((x Int)(y Int)(x_13 Int)(y_14 Int)(y_15 Int)(y_20 Int)) Bool
  (and
    (= y y_14)
    (= x x_13)
    (= x_13 0)
    (= y_14 0)
  )
)

(define-fun trans-f ((x Int)(y Int)(x! Int)(y! Int)(x_13 Int)(y_14 Int)(y_15 Int)(y_20 Int)) Bool
  (or
    (and
      (= y_20 y)
      (= y_20 y!)
      (= x x!)
    )
    (and
      (= y_20 y)
      (>= y_20 0)
      (= y_15 (+ y_20 x_13))
      (= y_15 y!)
      (= x x_13)
      (= x! x_13)
    )
  )
)

(define-fun post-f ((x Int)(y Int)(x_13 Int)(y_14 Int)(y_15 Int)(y_20 Int)) Bool
  (or
    (not (= y y_20))
    (not
      (and
        (not (>= y_20 0))
        (not (>= y_20 0))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f x y x_13 y_14 y_15 y_20 )
    (inv-f x y )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f x y )
      (trans-f x y x! y! x_13 y_14 y_15 y_20 )
    )
    (inv-f x! y! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f x y )
    (post-f x y x_13 y_14 y_15 y_20 )
  )
))

