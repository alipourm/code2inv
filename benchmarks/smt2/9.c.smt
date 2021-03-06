(set-logic LIA)

(declare-const y Int)
(declare-const y! Int)
(declare-const x Int)
(declare-const x! Int)
(declare-const tmp Int)
(declare-const tmp! Int)

(declare-const y_35 Int)
(declare-const y_28 Int)
(declare-const y_0 Int)
(declare-const x_34 Int)
(declare-const x_27 Int)
(declare-const x_0 Int)

(define-fun inv-f((tmp Int)(x Int)(y Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((tmp Int)(x Int)(y Int)(x_0 Int)(x_27 Int)(x_34 Int)(y_0 Int)(y_28 Int)(y_35 Int)) Bool
  (and
    (= y y_0)
    (= x x_0)
    (>= x_0 0)
    (<= x_0 2)
    (<= y_0 2)
    (>= y_0 0)
  )
)

(define-fun trans-f ((tmp Int)(x Int)(y Int)(tmp! Int)(x! Int)(y! Int)(x_0 Int)(x_27 Int)(x_34 Int)(y_0 Int)(y_28 Int)(y_35 Int)) Bool
  (or
    (and
      (= x_34 x)
      (= y_35 y)
      (= y_35 y!)
      (= x_34 x!)
      (= y y!)
      (= x x!)
      (= tmp tmp!)
    )
    (and
      (= x_34 x)
      (= y_35 y)
      (= x_27 (+ x_34 2))
      (= y_28 (+ y_35 2))
      (= y_28 y!)
      (= x_27 x!)
      (= tmp tmp!)
    )
  )
)

(define-fun post-f ((tmp Int)(x Int)(y Int)(x_0 Int)(x_27 Int)(x_34 Int)(y_0 Int)(y_28 Int)(y_35 Int)) Bool
  (or
    (not
      (and
        (= x x_34)
        (= y y_35)
      )
    )
    (not
      (and
        (= x_34 4)
        (not (not (= y_35 0)))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f tmp x y x_0 x_27 x_34 y_0 y_28 y_35 )
    (inv-f tmp x y )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f tmp x y )
      (trans-f tmp x y tmp! x! y! x_0 x_27 x_34 y_0 y_28 y_35 )
    )
    (inv-f tmp! x! y! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f tmp x y )
    (post-f tmp x y x_0 x_27 x_34 y_0 y_28 y_35 )
  )
))

