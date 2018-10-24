(set-logic LIA)

(declare-const y Int)
(declare-const y! Int)
(declare-const x Int)
(declare-const x! Int)
(declare-const j Int)
(declare-const j! Int)
(declare-const i Int)
(declare-const i! Int)

(declare-const y_18 Int)
(declare-const x_0 Int)
(declare-const j_26 Int)
(declare-const j_20 Int)
(declare-const j_16 Int)
(declare-const i_25 Int)
(declare-const i_19 Int)
(declare-const i_17 Int)

(define-fun inv-f((i Int)(j Int)(x Int)(y Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((i Int)(j Int)(x Int)(y Int)(i_17 Int)(i_19 Int)(i_25 Int)(j_16 Int)(j_20 Int)(j_26 Int)(x_0 Int)(y_18 Int)) Bool
  (and
    (= y y_18)
    (= j j_16)
    (= i i_17)
    (= j_16 0)
    (= i_17 0)
    (= y_18 2)
  )
)

(define-fun trans-f ((i Int)(j Int)(x Int)(y Int)(i! Int)(j! Int)(x! Int)(y! Int)(i_17 Int)(i_19 Int)(i_25 Int)(j_16 Int)(j_20 Int)(j_26 Int)(x_0 Int)(y_18 Int)) Bool
  (or
    (and
      (= i_25 i)
      (= j_26 j)
      (= j_26 j!)
      (= i_25 i!)
      (= x x_0)
      (= x! x_0)
      (= y y!)
      (= j j!)
    )
    (and
      (= i_25 i)
      (= j_26 j)
      (<= i_25 x_0)
      (= i_19 (+ i_25 1))
      (= j_20 (+ j_26 y_18))
      (= j_20 j!)
      (= i_19 i!)
      (= x x_0)
      (= x! x_0)
      (= y y_18)
      (= y! y_18)
    )
  )
)

(define-fun post-f ((i Int)(j Int)(x Int)(y Int)(i_17 Int)(i_19 Int)(i_25 Int)(j_16 Int)(j_20 Int)(j_26 Int)(x_0 Int)(y_18 Int)) Bool
  (or
    (not
      (and
        (= i i_25)
        (= j j_26)
        (= x x_0)
        (= y y_18)
      )
    )
    (not
      (and
        (not (<= i_25 x_0))
        (not (= i_25 j_26))
        (not (not (= y_18 1)))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f i j x y i_17 i_19 i_25 j_16 j_20 j_26 x_0 y_18 )
    (inv-f i j x y )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f i j x y )
      (trans-f i j x y i! j! x! y! i_17 i_19 i_25 j_16 j_20 j_26 x_0 y_18 )
    )
    (inv-f i! j! x! y! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f i j x y )
    (post-f i j x y i_17 i_19 i_25 j_16 j_20 j_26 x_0 y_18 )
  )
))

