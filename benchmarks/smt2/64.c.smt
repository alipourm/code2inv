(set-logic LIA)

(declare-const y Int)
(declare-const y! Int)
(declare-const x Int)
(declare-const x! Int)

(declare-const y_21 Int)
(declare-const y_14 Int)
(declare-const y_0 Int)
(declare-const x_20 Int)
(declare-const x_15 Int)
(declare-const x_13 Int)

(define-fun inv-f((x Int)(y Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((x Int)(y Int)(x_13 Int)(x_15 Int)(x_20 Int)(y_0 Int)(y_14 Int)(y_21 Int)) Bool
  (and
    (= x x_13)
    (= x_13 1)
  )
)

(define-fun trans-f ((x Int)(y Int)(x! Int)(y! Int)(x_13 Int)(x_15 Int)(x_20 Int)(y_0 Int)(y_14 Int)(y_21 Int)) Bool
  (or
    (and
      (= x_20 x)
      (= y_21 y)
      (= y_21 y!)
      (= x_20 x!)
      (= y y!)
    )
    (and
      (= x_20 x)
      (= y_21 y)
      (<= x_20 10)
      (= y_14 (- 10 x_20))
      (= x_15 (+ x_20 1))
      (= y_14 y!)
      (= x_15 x!)
    )
  )
)

(define-fun post-f ((x Int)(y Int)(x_13 Int)(x_15 Int)(x_20 Int)(y_0 Int)(y_14 Int)(y_21 Int)) Bool
  (or
    (not
      (and
        (= x x_20)
        (= y y_21)
      )
    )
    (not
      (and
        (not (<= x_20 10))
        (not (< y_21 10))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f x y x_13 x_15 x_20 y_0 y_14 y_21 )
    (inv-f x y )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f x y )
      (trans-f x y x! y! x_13 x_15 x_20 y_0 y_14 y_21 )
    )
    (inv-f x! y! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f x y )
    (post-f x y x_13 x_15 x_20 y_0 y_14 y_21 )
  )
))

