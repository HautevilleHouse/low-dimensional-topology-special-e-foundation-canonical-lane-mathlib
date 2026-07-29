import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.DualityInvariance

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure ClassificationInvariantsPackage (P : DualityInvariancePackage) where
  fundamentalGroupFinitelyPresented : Prop
  eulerCharacteristicComputed : Prop
  signatureComputed : Prop
  normalFormConstructed : Prop

structure ClassificationInvariantsEvidence {P : DualityInvariancePackage}
    (C : ClassificationInvariantsPackage P) where
  fundamentalGroupFinitelyPresentedClosed : C.fundamentalGroupFinitelyPresented
  eulerCharacteristicComputedClosed : C.eulerCharacteristicComputed
  signatureComputedClosed : C.signatureComputed
  normalFormConstructedClosed : C.normalFormConstructed

def ClassificationInvariantsClosed {P : DualityInvariancePackage}
    (C : ClassificationInvariantsPackage P) : Prop :=
  C.fundamentalGroupFinitelyPresented ∧ C.eulerCharacteristicComputed ∧
  C.signatureComputed ∧ C.normalFormConstructed

theorem classification_invariants_closed_from_evidence {P : DualityInvariancePackage}
    (C : ClassificationInvariantsPackage P) (E : ClassificationInvariantsEvidence C) :
    ClassificationInvariantsClosed C := by
  exact And.intro E.fundamentalGroupFinitelyPresentedClosed
    (And.intro E.eulerCharacteristicComputedClosed
      (And.intro E.signatureComputedClosed E.normalFormConstructedClosed))

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse