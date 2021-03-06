(set-logic LIA)

(declare-const m Int)
(declare-const m! Int)
(declare-const k Int)
(declare-const k! Int)
(declare-const j Int)
(declare-const j! Int)
(declare-const a Int)
(declare-const a! Int)

(declare-const m_27 Int)
(declare-const m_26 Int)
(declare-const m_19 Int)
(declare-const m_0 Int)
(declare-const k_25 Int)
(declare-const k_20 Int)
(declare-const k_18 Int)
(declare-const j_17 Int)
(declare-const a_0 Int)

(define-fun inv-f((a Int)(j Int)(k Int)(m Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((a Int)(j Int)(k Int)(m Int)(a_0 Int)(j_17 Int)(k_18 Int)(k_20 Int)(k_25 Int)(m_0 Int)(m_19 Int)(m_26 Int)(m_27 Int)) Bool
  (and
    (= k k_18)
    (= j j_17)
    (= j_17 0)
    (= k_18 0)
  )
)

(define-fun trans-f ((a Int)(j Int)(k Int)(m Int)(a! Int)(j! Int)(k! Int)(m! Int)(a_0 Int)(j_17 Int)(k_18 Int)(k_20 Int)(k_25 Int)(m_0 Int)(m_19 Int)(m_26 Int)(m_27 Int)) Bool
  (or
    (and
      (= k_25 k)
      (= m_26 m)
      (= m_26 m!)
      (= k_25 k!)
      (= m m!)
      (= j j!)
      (= a a!)
    )
    (and
      (= k_25 k)
      (= m_26 m)
      (< k_25 1)
      (not (< m_26 a_0))
      (= m_27 m_26)
      (= k_20 (+ k_25 1))
      (= m_27 m!)
      (= k_20 k!)
      (= a a_0)
      (= a! a_0)
      (= j j!)
    )
    (and
      (= k_25 k)
      (= m_26 m)
      (< k_25 1)
      (< m_26 a_0)
      (= m_19 a_0)
      (= m_27 m_19)
      (= k_20 (+ k_25 1))
      (= m_27 m!)
      (= k_20 k!)
      (= a a_0)
      (= a! a_0)
      (= j j!)
    )
  )
)

(define-fun post-f ((a Int)(j Int)(k Int)(m Int)(a_0 Int)(j_17 Int)(k_18 Int)(k_20 Int)(k_25 Int)(m_0 Int)(m_19 Int)(m_26 Int)(m_27 Int)) Bool
  (or
    (not
      (and
        (= a a_0)
        (= k k_25)
        (= m m_26)
      )
    )
    (not
      (and
        (not (< k_25 1))
        (not (<= a_0 m_26))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f a j k m a_0 j_17 k_18 k_20 k_25 m_0 m_19 m_26 m_27 )
    (inv-f a j k m )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f a j k m )
      (trans-f a j k m a! j! k! m! a_0 j_17 k_18 k_20 k_25 m_0 m_19 m_26 m_27 )
    )
    (inv-f a! j! k! m! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f a j k m )
    (post-f a j k m a_0 j_17 k_18 k_20 k_25 m_0 m_19 m_26 m_27 )
  )
))

