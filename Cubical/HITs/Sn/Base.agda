{-# OPTIONS --cubical --no-import-sorts --safe #-}
module Cubical.HITs.Sn.Base where

open import Cubical.HITs.Susp
open import Cubical.Foundations.Pointed
open import Cubical.Data.Nat
open import Cubical.Data.NatMinusOne
open import Cubical.Data.Empty
open import Cubical.Foundations.Prelude
open import Cubical.Data.Bool
open import Cubical.HITs.S1

S : ℕ₋₁ → Type₀
S neg1 = ⊥
S (ℕ→ℕ₋₁ n) = Susp (S (-1+ n))

S₊ : ℕ → Type₀
S₊ 0 = Bool
S₊ 1 = S¹
S₊ (suc (suc n)) = Susp (S₊ (suc n))

-- Pointed version
S₊∙ : (n : ℕ) → Pointed₀
S₊∙ 0 = (S₊ zero) , true
S₊∙ 1 = S¹ , base
S₊∙ (suc (suc n)) = (S₊ (suc (suc n))) , north
