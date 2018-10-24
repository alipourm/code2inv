(set-logic LIA)

(declare-const z Int)
(declare-const z! Int)
(declare-const y Int)
(declare-const y! Int)
(declare-const x Int)
(declare-const x! Int)

(declare-const z_0 Int)
(declare-const y_25 Int)
(declare-const y_19 Int)
(declare-const y_0 Int)
(declare-const x_24 Int)
(declare-const x_18 Int)
(declare-const x_17 Int)

(define-fun inv-f((x Int)(y Int)(z Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((x Int)(y Int)(z Int)(x_17 Int)(x_18 Int)(x_24 Int)(y_0 Int)(y_19 Int)(y_25 Int)(z_0 Int)) Bool
  (and
    (= x x_17)
    (= x_17 0)
  )
)

(define-fun trans-f ((x Int)(y Int)(z Int)(x! Int)(y! Int)(z! Int)(x_17 Int)(x_18 Int)(x_24 Int)(y_0 Int)(y_19 Int)(y_25 Int)(z_0 Int)) Bool
  (or
    (and
      (= x_24 x)
      (= y_25 y)
      (= y_25 y!)
      (= x_24 x!)
      (= z z!)
      (= y y!)
    )
    (and
      (= x_24 x)
      (= y_25 y)
      (< x_24 5)
      (= x_18 (+ x_24 1))
      (not (<= z_0 y_25))
      (= y_25 y!)
      (= x_18 x!)
      (= z z_0)
      (= z! z_0)
    )
    (and
      (= x_24 x)
      (= y_25 y)
      (< x_24 5)
      (= x_18 (+ x_24 1))
      (<= z_0 y_25)
      (= y_19 z_0)
      (= y_19 y!)
      (= x_18 x!)
      (= z z_0)
      (= z! z_0)
    )
  )
)

(define-fun post-f ((x Int)(y Int)(z Int)(x_17 Int)(x_18 Int)(x_24 Int)(y_0 Int)(y_19 Int)(y_25 Int)(z_0 Int)) Bool
  (or
    (not
      (and
        (= x x_24)
        (= y y_25)
        (= z z_0)
      )
    )
    (not
      (and
        (not (< x_24 5))
        (not (>= z_0 y_25))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f x y z x_17 x_18 x_24 y_0 y_19 y_25 z_0 )
    (inv-f x y z )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f x y z )
      (trans-f x y z x! y! z! x_17 x_18 x_24 y_0 y_19 y_25 z_0 )
    )
    (inv-f x! y! z! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f x y z )
    (post-f x y z x_17 x_18 x_24 y_0 y_19 y_25 z_0 )
  )
))

