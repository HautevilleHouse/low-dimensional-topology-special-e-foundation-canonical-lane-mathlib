import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure HeegaardFloerInvariant where
  M : Type u
  hatHeegaardFloer : Type v
  plusHeegaardFloer : Type w
  minusHeegaardFloer : Type x
  infinityHeegaardFloer : Type y
  dimensionalReduction : Prop

structure HeegaardFloerInvariantEvidence (H : HeegaardFloerInvariant) where
  hatDefined : Nonempty H.hatHeegaardFloer
  plusDefined : Nonempty H.plusHeegaardFloer
  minusDefined : Nonempty H.minusHeegaardFloer
  infinityDefined : Nonempty H.infinityHeegaardFloer
  dimensionalReductionClosed : H.dimensionalReduction

def HeegaardFloerInvariantClosed (H : HeegaardFloerInvariant) : Prop :=
  Nonempty H.hatHeegaardFloer ∧ Nonempty H.plusHeegaardFloer ∧ Nonempty H.minusHeegaardFloer ∧ Nonempty H.infinityHeegaardFloer ∧ H.dimensionalReduction

theorem heegaard_floer_invariant_closed_from_evidence (H : HeegaardFloerInvariant) (E : HeegaardFloerInvariantEvidence H) :
    HeegaardFloerInvariantClosed H := by
  exact And.intro E.hatDefined (And.intro E.plusDefined (And.intro E.minusDefined (And.intro E.infinityDefined E.dimensionalReductionClosed)))

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse