(set-logic LIA)

(declare-const m Int)
(declare-const m! Int)
(declare-const k Int)
(declare-const k! Int)
(declare-const j Int)
(declare-const j! Int)
(declare-const c Int)
(declare-const c! Int)
(declare-const a Int)
(declare-const a! Int)

(declare-const m_30 Int)
(declare-const m_29 Int)
(declare-const m_22 Int)
(declare-const m_0 Int)
(declare-const k_28 Int)
(declare-const k_23 Int)
(declare-const k_21 Int)
(declare-const j_20 Int)
(declare-const c_0 Int)
(declare-const a_0 Int)

(define-fun inv-f((a Int)(c Int)(j Int)(k Int)(m Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((a Int)(c Int)(j Int)(k Int)(m Int)(a_0 Int)(c_0 Int)(j_20 Int)(k_21 Int)(k_23 Int)(k_28 Int)(m_0 Int)(m_22 Int)(m_29 Int)(m_30 Int)) Bool
  (and
    (= k k_21)
    (= j j_20)
    (= j_20 0)
    (= k_21 0)
  )
)

(define-fun trans-f ((a Int)(c Int)(j Int)(k Int)(m Int)(a! Int)(c! Int)(j! Int)(k! Int)(m! Int)(a_0 Int)(c_0 Int)(j_20 Int)(k_21 Int)(k_23 Int)(k_28 Int)(m_0 Int)(m_22 Int)(m_29 Int)(m_30 Int)) Bool
  (or
    (and
      (= k_28 k)
      (= m_29 m)
      (= m_29 m!)
      (= k_28 k!)
      (= c c_0)
      (= c! c_0)
      (= m m!)
      (= j j!)
      (= a a!)
    )
    (and
      (= k_28 k)
      (= m_29 m)
      (< k_28 c_0)
      (not (< m_29 a_0))
      (= m_30 m_29)
      (= k_23 (+ k_28 1))
      (= m_30 m!)
      (= k_23 k!)
      (= a a_0)
      (= a! a_0)
      (= c c_0)
      (= c! c_0)
      (= j j!)
    )
    (and
      (= k_28 k)
      (= m_29 m)
      (< k_28 c_0)
      (< m_29 a_0)
      (= m_22 a_0)
      (= m_30 m_22)
      (= k_23 (+ k_28 1))
      (= m_30 m!)
      (= k_23 k!)
      (= a a_0)
      (= a! a_0)
      (= c c_0)
      (= c! c_0)
      (= j j!)
    )
  )
)

(define-fun post-f ((a Int)(c Int)(j Int)(k Int)(m Int)(a_0 Int)(c_0 Int)(j_20 Int)(k_21 Int)(k_23 Int)(k_28 Int)(m_0 Int)(m_22 Int)(m_29 Int)(m_30 Int)) Bool
  (or
    (not
      (and
        (= a a_0)
        (= c c_0)
        (= k k_28)
        (= m m_29)
      )
    )
    (not
      (and
        (not (< k_28 c_0))
        (> c_0 0)
        (not (<= a_0 m_29))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f a c j k m a_0 c_0 j_20 k_21 k_23 k_28 m_0 m_22 m_29 m_30 )
    (inv-f a c j k m )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f a c j k m )
      (trans-f a c j k m a! c! j! k! m! a_0 c_0 j_20 k_21 k_23 k_28 m_0 m_22 m_29 m_30 )
    )
    (inv-f a! c! j! k! m! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f a c j k m )
    (post-f a c j k m a_0 c_0 j_20 k_21 k_23 k_28 m_0 m_22 m_29 m_30 )
  )
))

