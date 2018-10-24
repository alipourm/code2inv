(set-logic LIA)

(declare-const sn Int)
(declare-const sn! Int)
(declare-const n Int)
(declare-const n! Int)
(declare-const i Int)
(declare-const i! Int)

(declare-const sn_25 Int)
(declare-const sn_19 Int)
(declare-const sn_16 Int)
(declare-const n_0 Int)
(declare-const i_24 Int)
(declare-const i_18 Int)
(declare-const i_17 Int)

(define-fun inv-f((i Int)(n Int)(sn Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((i Int)(n Int)(sn Int)(i_17 Int)(i_18 Int)(i_24 Int)(n_0 Int)(sn_16 Int)(sn_19 Int)(sn_25 Int)) Bool
  (and
    (= sn sn_16)
    (= i i_17)
    (= sn_16 0)
    (= i_17 1)
  )
)

(define-fun trans-f ((i Int)(n Int)(sn Int)(i! Int)(n! Int)(sn! Int)(i_17 Int)(i_18 Int)(i_24 Int)(n_0 Int)(sn_16 Int)(sn_19 Int)(sn_25 Int)) Bool
  (or
    (and
      (= i_24 i)
      (= sn_25 sn)
      (= sn_25 sn!)
      (= i_24 i!)
      (= n n_0)
      (= n! n_0)
      (= sn sn!)
    )
    (and
      (= i_24 i)
      (= sn_25 sn)
      (<= i_24 n_0)
      (= i_18 (+ i_24 1))
      (= sn_19 (+ sn_25 1))
      (= sn_19 sn!)
      (= i_18 i!)
      (= n n_0)
      (= n! n_0)
    )
  )
)

(define-fun post-f ((i Int)(n Int)(sn Int)(i_17 Int)(i_18 Int)(i_24 Int)(n_0 Int)(sn_16 Int)(sn_19 Int)(sn_25 Int)) Bool
  (or
    (not
      (and
        (= i i_24)
        (= n n_0)
        (= sn sn_25)
      )
    )
    (not
      (and
        (not (<= i_24 n_0))
        (not (= sn_25 0))
        (not (= sn_25 n_0))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f i n sn i_17 i_18 i_24 n_0 sn_16 sn_19 sn_25 )
    (inv-f i n sn )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f i n sn )
      (trans-f i n sn i! n! sn! i_17 i_18 i_24 n_0 sn_16 sn_19 sn_25 )
    )
    (inv-f i! n! sn! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f i n sn )
    (post-f i n sn i_17 i_18 i_24 n_0 sn_16 sn_19 sn_25 )
  )
))

