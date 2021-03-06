(set-logic LIA)

(declare-const x3 Int)
(declare-const x3! Int)
(declare-const x2 Int)
(declare-const x2! Int)
(declare-const x1 Int)
(declare-const x1! Int)
(declare-const d3 Int)
(declare-const d3! Int)
(declare-const d2 Int)
(declare-const d2! Int)
(declare-const d1 Int)
(declare-const d1! Int)

(declare-const x3_32 Int)
(declare-const x3_25 Int)
(declare-const x3_0 Int)
(declare-const x2_31 Int)
(declare-const x2_24 Int)
(declare-const x2_0 Int)
(declare-const x1_30 Int)
(declare-const x1_23 Int)
(declare-const x1_22 Int)
(declare-const d3_21 Int)
(declare-const d2_20 Int)
(declare-const d1_19 Int)

(define-fun inv-f((d1 Int)(d2 Int)(d3 Int)(x1 Int)(x2 Int)(x3 Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((d1 Int)(d2 Int)(d3 Int)(x1 Int)(x2 Int)(x3 Int)(d1_19 Int)(d2_20 Int)(d3_21 Int)(x1_22 Int)(x1_23 Int)(x1_30 Int)(x2_0 Int)(x2_24 Int)(x2_31 Int)(x3_0 Int)(x3_25 Int)(x3_32 Int)) Bool
  (and
    (= x1 x1_22)
    (= d3 d3_21)
    (= d2 d2_20)
    (= d1 d1_19)
    (= d1_19 1)
    (= d2_20 1)
    (= d3_21 1)
    (= x1_22 1)
  )
)

(define-fun trans-f ((d1 Int)(d2 Int)(d3 Int)(x1 Int)(x2 Int)(x3 Int)(d1! Int)(d2! Int)(d3! Int)(x1! Int)(x2! Int)(x3! Int)(d1_19 Int)(d2_20 Int)(d3_21 Int)(x1_22 Int)(x1_23 Int)(x1_30 Int)(x2_0 Int)(x2_24 Int)(x2_31 Int)(x3_0 Int)(x3_25 Int)(x3_32 Int)) Bool
  (or
    (and
      (= x1_30 x1)
      (= x2_31 x2)
      (= x3_32 x3)
      (= x3_32 x3!)
      (= x2_31 x2!)
      (= x1_30 x1!)
      (= x3 x3!)
      (= x2 x2!)
      (= d3 d3!)
      (= d2 d2!)
      (= d1 d1!)
    )
    (and
      (= x1_30 x1)
      (= x2_31 x2)
      (= x3_32 x3)
      (> x1_30 0)
      (not (> x2_31 0))
      (= x3_32 x3!)
      (= x2_31 x2!)
      (= x1_30 x1!)
      (= x3 x3!)
      (= d3 d3!)
      (= d2 d2!)
      (= d1 d1!)
    )
    (and
      (= x1_30 x1)
      (= x2_31 x2)
      (= x3_32 x3)
      (> x1_30 0)
      (> x2_31 0)
      (not (> x3_32 0))
      (= x3_32 x3!)
      (= x2_31 x2!)
      (= x1_30 x1!)
      (= d3 d3!)
      (= d2 d2!)
      (= d1 d1!)
    )
    (and
      (= x1_30 x1)
      (= x2_31 x2)
      (= x3_32 x3)
      (> x1_30 0)
      (> x2_31 0)
      (> x3_32 0)
      (= x1_23 (- x1_30 d1_19))
      (= x2_24 (- x2_31 d2_20))
      (= x3_25 (- x3_32 d3_21))
      (= x3_25 x3!)
      (= x2_24 x2!)
      (= x1_23 x1!)
      (= d1 d1_19)
      (= d1! d1_19)
      (= d2 d2_20)
      (= d2! d2_20)
      (= d3 d3_21)
      (= d3! d3_21)
    )
  )
)

(define-fun post-f ((d1 Int)(d2 Int)(d3 Int)(x1 Int)(x2 Int)(x3 Int)(d1_19 Int)(d2_20 Int)(d3_21 Int)(x1_22 Int)(x1_23 Int)(x1_30 Int)(x2_0 Int)(x2_24 Int)(x2_31 Int)(x3_0 Int)(x3_25 Int)(x3_32 Int)) Bool
  (or
    (not
      (and
        (= x1 x1_30)
        (= x2 x2_31)
      )
    )
    (not
      (and
        (not (> x1_30 0))
        (not (>= x2_31 0))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f d1 d2 d3 x1 x2 x3 d1_19 d2_20 d3_21 x1_22 x1_23 x1_30 x2_0 x2_24 x2_31 x3_0 x3_25 x3_32 )
    (inv-f d1 d2 d3 x1 x2 x3 )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f d1 d2 d3 x1 x2 x3 )
      (trans-f d1 d2 d3 x1 x2 x3 d1! d2! d3! x1! x2! x3! d1_19 d2_20 d3_21 x1_22 x1_23 x1_30 x2_0 x2_24 x2_31 x3_0 x3_25 x3_32 )
    )
    (inv-f d1! d2! d3! x1! x2! x3! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f d1 d2 d3 x1 x2 x3 )
    (post-f d1 d2 d3 x1 x2 x3 d1_19 d2_20 d3_21 x1_22 x1_23 x1_30 x2_0 x2_24 x2_31 x3_0 x3_25 x3_32 )
  )
))

