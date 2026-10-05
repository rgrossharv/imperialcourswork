import Mathlib.Tactic

/-Problem 1-/
example (P Q : Prop) (hP : P) (hQ : P → Q) : P ∧ Q := by
  constructor
  · exact hP
  exact hQ hP

/-Problem 2-/
example (P Q : Prop) (hP : P ∨ Q) (hQ : P → Q) : Q := by
  rcases hP with hp | hq
  · exact hQ hp
  exact hq

/-Problem 3-/
example (P Q : Prop) (hP : P ∧ Q) : P ∨ Q := by
  left
  exact hP.1

/-Problem 4-/
example (h : ¬ True) : False := by
  apply h
  exact trivial

/-Problem 5-/
example (P : Prop) (hP : P) : ¬ ¬ P := by
  by_contra!
  apply this
  exact hP
