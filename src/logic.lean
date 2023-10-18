
section propositional

variables P Q R : Prop


------------------------------------------------
-- Proposições de dupla negaço:
------------------------------------------------

theorem doubleneg_intro :
  P → ¬¬P  :=
begin
  intro p,
  intro pb,
  have b : false := pb p,
  contradiction,
end

theorem doubleneg_elim :
  ¬¬P → P  :=
begin
<<<<<<< HEAD
  intro p,
  by_contradiction hboom,
  by_cases h : P,
  have b : false := p hboom,
  exact b,
  have b : false := p hboom,
  exact b,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end

theorem doubleneg_law :
  ¬¬P ↔ P  :=
begin
<<<<<<< HEAD
  split,
  intro p,
  by_contradiction hboom,
  by_cases h : P,
  have b : false := p hboom,
  exact b,
  have b : false := p hboom,
  exact b,
  intro p,
  intro pb,
  have b : false := pb p,
  contradiction,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end

------------------------------------------------
-- Comutatividade dos ∨,∧:
------------------------------------------------

theorem disj_comm :
  (P ∨ Q) → (Q ∨ P)  :=
begin
<<<<<<< HEAD
  intro pq,
  cases pq with p q,
  right,
  exact p,
  left,
  exact q,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end

theorem conj_comm :
  (P ∧ Q) → (Q ∧ P)  :=
begin
<<<<<<< HEAD
  intro pq,
  cases pq,
  split,
  exact pq_right,
  exact pq_left,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end


------------------------------------------------
-- Proposições de interdefinabilidade dos →,∨:
------------------------------------------------

theorem impl_as_disj_converse :
  (¬P ∨ Q) → (P → Q)  :=
begin
<<<<<<< HEAD
  intro pq,
  intro p,
  cases pq with np q,
  by_contradiction hboom,
  have h : false := np p,
  contradiction,
  exact q,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end

theorem disj_as_impl :
  (P ∨ Q) → (¬P → Q)  :=
begin
<<<<<<< HEAD
  intro pq,
  intro np,
  cases pq with p q,
  by_contradiction hboom,
  have b : false := np p,
  contradiction,
  exact q,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end


------------------------------------------------
-- Proposições de contraposição:
------------------------------------------------

theorem impl_as_contrapositive :
  (P → Q) → (¬Q → ¬P)  :=
begin
<<<<<<< HEAD
  intro pq,
  intro nq,
  intro np,
  have q : Q := pq np,
  have b : false := nq q,
  exact b,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end

theorem impl_as_contrapositive_converse :
  (¬Q → ¬P) → (P → Q)  :=
begin
<<<<<<< HEAD
  intro nqnp,
  intro p,
  by_contradiction hboom,
  apply nqnp,
  exact hboom,
  exact p,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end

theorem contrapositive_law :
  (P → Q) ↔ (¬Q → ¬P)  :=
begin
<<<<<<< HEAD
  split,
  intro pq,
  intro nq,
  intro np,
  have q : Q := pq np,
  have b : false := nq q,
  exact b,
  intro nqnp,
  intro p,
  by_contradiction hboom,
  apply nqnp,
  exact hboom,
  exact p,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end


------------------------------------------------
-- A irrefutabilidade do LEM:
------------------------------------------------

theorem lem_irrefutable :
  ¬¬(P∨¬P)  :=
begin
<<<<<<< HEAD
  by_cases h : P,
  intro pp,
  apply pp,
  left,
  exact h,
  intro pp,
  apply pp,
  right,
  exact h,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end


------------------------------------------------
-- A lei de Peirce
------------------------------------------------

theorem peirce_law_weak :
  ((P → Q) → P) → ¬¬P  :=
begin
<<<<<<< HEAD
  intro pqp,
  intro np,
  apply np,
  apply pqp,
  intro p,
  have b : false := np p,
  exfalso,
  exact b,
=======
  sorry,
>>>>>>> 6a5cb529a223be050b3888aeeeb68128cf26973a
end


------------------------------------------------
-- Proposições de interdefinabilidade dos ∨,∧:
------------------------------------------------

theorem disj_as_negconj :
  P∨Q → ¬(¬P∧¬Q)  :=
begin
  sorry,
end

theorem conj_as_negdisj :
  P∧Q → ¬(¬P∨¬Q)  :=
begin
  sorry,
end


------------------------------------------------
-- As leis de De Morgan para ∨,∧:
------------------------------------------------

theorem demorgan_disj :
  ¬(P∨Q) → (¬P ∧ ¬Q)  :=
begin
  sorry,
end

theorem demorgan_disj_converse :
  (¬P ∧ ¬Q) → ¬(P∨Q)  :=
begin
  sorry,
end

theorem demorgan_conj :
  ¬(P∧Q) → (¬Q ∨ ¬P)  :=
begin
  sorry,
end

theorem demorgan_conj_converse :
  (¬Q ∨ ¬P) → ¬(P∧Q)  :=
begin
  sorry,
end

theorem demorgan_conj_law :
  ¬(P∧Q) ↔ (¬Q ∨ ¬P)  :=
begin
  sorry,
end

theorem demorgan_disj_law :
  ¬(P∨Q) ↔ (¬P ∧ ¬Q)  :=
begin
  sorry,
end

------------------------------------------------
-- Proposições de distributividade dos ∨,∧:
------------------------------------------------

theorem distr_conj_disj :
  P∧(Q∨R) → (P∧Q)∨(P∧R)  :=
begin
  sorry,
end

theorem distr_conj_disj_converse :
  (P∧Q)∨(P∧R) → P∧(Q∨R)  :=
begin
  sorry,
end

theorem distr_disj_conj :
  P∨(Q∧R) → (P∨Q)∧(P∨R)  :=
begin
  sorry,
end

theorem distr_disj_conj_converse :
  (P∨Q)∧(P∨R) → P∨(Q∧R)  :=
begin
  sorry,
end


------------------------------------------------
-- Currificação
------------------------------------------------

theorem curry_prop :
  ((P∧Q)→R) → (P→(Q→R))  :=
begin
  sorry,
end

theorem uncurry_prop :
  (P→(Q→R)) → ((P∧Q)→R)  :=
begin
  sorry,
end


------------------------------------------------
-- Reflexividade da →:
------------------------------------------------

theorem impl_refl :
  P → P  :=
begin
  sorry,
end

------------------------------------------------
-- Weakening and contraction:
------------------------------------------------

theorem weaken_disj_right :
  P → (P∨Q)  :=
begin
  sorry,
end

theorem weaken_disj_left :
  Q → (P∨Q)  :=
begin
  sorry,
end

theorem weaken_conj_right :
  (P∧Q) → P  :=
begin
  sorry,
end

theorem weaken_conj_left :
  (P∧Q) → Q  :=
begin
  sorry,
end

theorem conj_idempot :
  (P∧P) ↔ P :=
begin
  sorry,
end

theorem disj_idempot :
  (P∨P) ↔ P  :=
begin
  sorry,
end

end propositional


----------------------------------------------------------------


section predicate

variable U : Type
variables P Q : U -> Prop


------------------------------------------------
-- As leis de De Morgan para ∃,∀:
------------------------------------------------

theorem demorgan_exists :
  ¬(∃x, P x) → (∀x, ¬P x)  :=
begin
  sorry,
end

theorem demorgan_exists_converse :
  (∀x, ¬P x) → ¬(∃x, P x)  :=
begin
  sorry,
end

theorem demorgan_forall :
  ¬(∀x, P x) → (∃x, ¬P x)  :=
begin
  sorry,
end

theorem demorgan_forall_converse :
  (∃x, ¬P x) → ¬(∀x, P x)  :=
begin
  sorry,
end

theorem demorgan_forall_law :
  ¬(∀x, P x) ↔ (∃x, ¬P x)  :=
begin
  sorry,
end

theorem demorgan_exists_law :
  ¬(∃x, P x) ↔ (∀x, ¬P x)  :=
begin
  sorry,
end


------------------------------------------------
-- Proposições de interdefinabilidade dos ∃,∀:
------------------------------------------------

theorem exists_as_neg_forall :
  (∃x, P x) → ¬(∀x, ¬P x)  :=
begin
  sorry,
end

theorem forall_as_neg_exists :
  (∀x, P x) → ¬(∃x, ¬P x)  :=
begin
  sorry,
end

theorem forall_as_neg_exists_converse :
  ¬(∃x, ¬P x) → (∀x, P x)  :=
begin
  sorry,
end

theorem exists_as_neg_forall_converse :
  ¬(∀x, ¬P x) → (∃x, P x)  :=
begin
  sorry,
end

theorem forall_as_neg_exists_law :
  (∀x, P x) ↔ ¬(∃x, ¬P x)  :=
begin
  sorry,
end

theorem exists_as_neg_forall_law :
  (∃x, P x) ↔ ¬(∀x, ¬P x)  :=
begin
  sorry,
end


------------------------------------------------
--  Proposições de distributividade de quantificadores:
------------------------------------------------

theorem exists_conj_as_conj_exists :
  (∃x, P x ∧ Q x) → (∃x, P x) ∧ (∃x, Q x)  :=
begin
  sorry,
end

theorem exists_disj_as_disj_exists :
  (∃x, P x ∨ Q x) → (∃x, P x) ∨ (∃x, Q x)  :=
begin
  sorry,
end

theorem exists_disj_as_disj_exists_converse :
  (∃x, P x) ∨ (∃x, Q x) → (∃x, P x ∨ Q x)  :=
begin
  sorry,
end

theorem forall_conj_as_conj_forall :
  (∀x, P x ∧ Q x) → (∀x, P x) ∧ (∀x, Q x)  :=
begin
  sorry,
end

theorem forall_conj_as_conj_forall_converse :
  (∀x, P x) ∧ (∀x, Q x) → (∀x, P x ∧ Q x)  :=
begin
  sorry,
end


theorem forall_disj_as_disj_forall_converse :
  (∀x, P x) ∨ (∀x, Q x) → (∀x, P x ∨ Q x)  :=
begin
  sorry,
end


/- NOT THEOREMS --------------------------------

theorem forall_disj_as_disj_forall :
  (∀x, P x ∨ Q x) → (∀x, P x) ∨ (∀x, Q x)  :=
begin
end

theorem exists_conj_as_conj_exists_converse :
  (∃x, P x) ∧ (∃x, Q x) → (∃x, P x ∧ Q x)  :=
begin
end

---------------------------------------------- -/

end predicate
