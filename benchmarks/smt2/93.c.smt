(set-logic LIA)

(declare-const y Int)
(declare-const y! Int)
(declare-const x Int)
(declare-const x! Int)
(declare-const tmp Int)
(declare-const tmp! Int)
(declare-const n Int)
(declare-const n! Int)
(declare-const i Int)
(declare-const i! Int)

(declare-const y_41 Int)
(declare-const y_33 Int)
(declare-const y_31 Int)
(declare-const y_27 Int)
(declare-const x_40 Int)
(declare-const x_32 Int)
(declare-const x_30 Int)
(declare-const x_26 Int)
(declare-const n_0 Int)
(declare-const i_38 Int)
(declare-const i_28 Int)
(declare-const i_25 Int)

(define-fun inv-f((i Int)(n Int)(tmp Int)(x Int)(y Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((i Int)(n Int)(tmp Int)(x Int)(y Int)(i_25 Int)(i_28 Int)(i_38 Int)(n_0 Int)(x_26 Int)(x_30 Int)(x_32 Int)(x_40 Int)(y_27 Int)(y_31 Int)(y_33 Int)(y_41 Int)) Bool
  (and
    (= y y_27)
    (= x x_26)
    (= n n_0)
    (= i i_25)
    (>= n_0 0)
    (= i_25 0)
    (= x_26 0)
    (= y_27 0)
  )
)

(define-fun trans-f ((i Int)(n Int)(tmp Int)(x Int)(y Int)(i! Int)(n! Int)(tmp! Int)(x! Int)(y! Int)(i_25 Int)(i_28 Int)(i_38 Int)(n_0 Int)(x_26 Int)(x_30 Int)(x_32 Int)(x_40 Int)(y_27 Int)(y_31 Int)(y_33 Int)(y_41 Int)) Bool
  (or
    (and
      (= i_38 i)
      (= x_40 x)
      (= y_41 y)
      (= y_41 y!)
      (= x_40 x!)
      (= i_38 i!)
      (= n n_0)
      (= n! n_0)
      (= y y!)
      (= x x!)
      (= tmp tmp!)
    )
    (and
      (= i_38 i)
      (= x_40 x)
      (= y_41 y)
      (< i_38 n_0)
      (= i_28 (+ i_38 1))
      (= x_32 (+ x_40 2))
      (= y_33 (+ y_41 1))
      (= y_33 y!)
      (= x_32 x!)
      (= i_28 i!)
      (= n n_0)
      (= n! n_0)
      (= tmp tmp!)
    )
    (and
      (= i_38 i)
      (= x_40 x)
      (= y_41 y)
      (< i_38 n_0)
      (= i_28 (+ i_38 1))
      (= x_30 (+ x_40 1))
      (= y_31 (+ y_41 2))
      (= y_31 y!)
      (= x_30 x!)
      (= i_28 i!)
      (= n n_0)
      (= n! n_0)
      (= tmp tmp!)
    )
  )
)

(define-fun post-f ((i Int)(n Int)(tmp Int)(x Int)(y Int)(i_25 Int)(i_28 Int)(i_38 Int)(n_0 Int)(x_26 Int)(x_30 Int)(x_32 Int)(x_40 Int)(y_27 Int)(y_31 Int)(y_33 Int)(y_41 Int)) Bool
  (or
    (not
      (and
        (= i i_38)
        (= n n_0)
        (= x x_40)
        (= y y_41)
      )
    )
    (not
      (and
        (not (< i_38 n_0))
        (not
          (=
            (* 3 n_0)
            (+ x_40 y_41)
          )
        )
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f i n tmp x y i_25 i_28 i_38 n_0 x_26 x_30 x_32 x_40 y_27 y_31 y_33 y_41 )
    (inv-f i n tmp x y )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f i n tmp x y )
      (trans-f i n tmp x y i! n! tmp! x! y! i_25 i_28 i_38 n_0 x_26 x_30 x_32 x_40 y_27 y_31 y_33 y_41 )
    )
    (inv-f i! n! tmp! x! y! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f i n tmp x y )
    (post-f i n tmp x y i_25 i_28 i_38 n_0 x_26 x_30 x_32 x_40 y_27 y_31 y_33 y_41 )
  )
))

