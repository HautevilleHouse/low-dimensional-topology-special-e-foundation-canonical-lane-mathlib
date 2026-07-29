import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.LowDimensionalTopologyAdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure DualityInvariancePackage where
  poincareDualityHolds : Prop
  intersectionFormDefined : Prop
  homologyTorsionControlled : Prop

structure DualityInvarianceEvidence (P : DualityInvariancePackage) where
  poincareDualityHoldsClosed : P.poincareDualityHolds
  intersectionFormDefinedClosed : P.intersectionFormDefined
  homologyTorsionControlledClosed : P.homologyTorsionControlled

def DualityInvarianceClosed (P : DualityInvariancePackage) : Prop :=
  P.poincareDualityHolds ∧ P.intersectionFormDefined ∧ P.homologyTorsionControlled

theorem duality_invariance_closed_from_evidence (P : DualityInvariancePackage)
    (E : DualityInvarianceEvidence P) : DualityInvarianceClosed P := by
  exact And.intro E.poincareDualityHoldsClosed
    (And.intro E.intersectionFormDefinedClosed E.homologyTorsionControlledClosed)

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse