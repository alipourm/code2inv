(set-logic LIA)

(declare-const tmp___0 Int)
(declare-const tmp___0! Int)
(declare-const tmp Int)
(declare-const tmp! Int)
(declare-const c Int)
(declare-const c! Int)

(declare-const c_39 Int)
(declare-const c_34 Int)
(declare-const c_33 Int)
(declare-const c_30 Int)

(define-fun inv-f((c Int)(tmp Int)(tmp___0 Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((c Int)(tmp Int)(tmp___0 Int)(c_30 Int)(c_33 Int)(c_34 Int)(c_39 Int)) Bool
  (and
    (= c c_30)
    (= c_30 0)
  )
)

(define-fun trans-f ((c Int)(tmp Int)(tmp___0 Int)(c! Int)(tmp! Int)(tmp___0! Int)(c_30 Int)(c_33 Int)(c_34 Int)(c_39 Int)) Bool
  (or
    (and
      (= c_39 c)
      (= c_39 c!)
      (= tmp___0 tmp___0!)
      (= tmp tmp!)
      (= c c!)
    )
    (and
      (= c_39 c)
      (not (= c_39 40))
      (= c_39 c!)
      (= tmp___0 tmp___0!)
      (= tmp tmp!)
    )
    (and
      (= c_39 c)
      (= c_39 40)
      (= c_34 1)
      (= c_34 c!)
      (= tmp___0 tmp___0!)
      (= tmp tmp!)
    )
    (and
      (= c_39 c)
      (not (not (= c_39 40)))
      (= c_39 c!)
      (= tmp___0 tmp___0!)
      (= tmp tmp!)
    )
    (and
      (= c_39 c)
      (not (= c_39 40))
      (= c_33 (+ c_39 1))
      (= c_33 c!)
      (= tmp___0 tmp___0!)
      (= tmp tmp!)
    )
  )
)

(define-fun post-f ((c Int)(tmp Int)(tmp___0 Int)(c_30 Int)(c_33 Int)(c_34 Int)(c_39 Int)) Bool
  (or
    (not (= c c_39))
    (not
      (and
        (not (= c_39 40))
        (not (<= c_39 40))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f c tmp tmp___0 c_30 c_33 c_34 c_39 )
    (inv-f c tmp tmp___0 )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f c tmp tmp___0 )
      (trans-f c tmp tmp___0 c! tmp! tmp___0! c_30 c_33 c_34 c_39 )
    )
    (inv-f c! tmp! tmp___0! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f c tmp tmp___0 )
    (post-f c tmp tmp___0 c_30 c_33 c_34 c_39 )
  )
))

