(set-logic LIA)

(declare-const tmp___0 Int)
(declare-const tmp___0! Int)
(declare-const tmp Int)
(declare-const tmp! Int)
(declare-const n Int)
(declare-const n! Int)
(declare-const c Int)
(declare-const c! Int)

(declare-const n_0 Int)
(declare-const c_45 Int)
(declare-const c_40 Int)
(declare-const c_39 Int)
(declare-const c_35 Int)

(define-fun inv-f((c Int)(n Int)(tmp Int)(tmp___0 Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((c Int)(n Int)(tmp Int)(tmp___0 Int)(c_35 Int)(c_39 Int)(c_40 Int)(c_45 Int)(n_0 Int)) Bool
  (and
    (= n n_0)
    (= c c_35)
    (= c_35 0)
    (> n_0 0)
  )
)

(define-fun trans-f ((c Int)(n Int)(tmp Int)(tmp___0 Int)(c! Int)(n! Int)(tmp! Int)(tmp___0! Int)(c_35 Int)(c_39 Int)(c_40 Int)(c_45 Int)(n_0 Int)) Bool
  (or
    (and
      (= c_45 c)
      (= c_45 c!)
      (= tmp___0 tmp___0!)
      (= tmp tmp!)
      (= n n!)
      (= c c!)
    )
    (and
      (= c_45 c)
      (not (= c_45 n_0))
      (= c_45 c!)
      (= n n_0)
      (= n! n_0)
      (= tmp___0 tmp___0!)
      (= tmp tmp!)
    )
    (and
      (= c_45 c)
      (= c_45 n_0)
      (= c_40 1)
      (= c_40 c!)
      (= n n_0)
      (= n! n_0)
      (= tmp___0 tmp___0!)
      (= tmp tmp!)
    )
    (and
      (= c_45 c)
      (not (not (= c_45 n_0)))
      (= c_45 c!)
      (= n n_0)
      (= n! n_0)
      (= tmp___0 tmp___0!)
      (= tmp tmp!)
    )
    (and
      (= c_45 c)
      (not (= c_45 n_0))
      (= c_39 (+ c_45 1))
      (= c_39 c!)
      (= n n_0)
      (= n! n_0)
      (= tmp___0 tmp___0!)
      (= tmp tmp!)
    )
  )
)

(define-fun post-f ((c Int)(n Int)(tmp Int)(tmp___0 Int)(c_35 Int)(c_39 Int)(c_40 Int)(c_45 Int)(n_0 Int)) Bool
  (or
    (not
      (and
        (= c c_45)
        (= n n_0)
      )
    )
    (not
      (and
        (< c_45 0)
        (> c_45 n_0)
        (not (= c_45 n_0))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f c n tmp tmp___0 c_35 c_39 c_40 c_45 n_0 )
    (inv-f c n tmp tmp___0 )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f c n tmp tmp___0 )
      (trans-f c n tmp tmp___0 c! n! tmp! tmp___0! c_35 c_39 c_40 c_45 n_0 )
    )
    (inv-f c! n! tmp! tmp___0! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f c n tmp tmp___0 )
    (post-f c n tmp tmp___0 c_35 c_39 c_40 c_45 n_0 )
  )
))

