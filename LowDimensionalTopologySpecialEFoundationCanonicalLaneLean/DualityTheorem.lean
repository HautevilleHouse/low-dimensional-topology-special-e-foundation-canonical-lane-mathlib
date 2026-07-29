import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure DualityTheoremPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  poincareDualityHolds : Prop
  intersectionPairing : Prop
  signatureDefined : Prop

structure DualityTheoremEvidence (D : DualityTheoremPackage) where
  poincareDualityHoldsClosed : D.poincareDualityHolds
  intersectionPairingClosed : D.intersectionPairing
  signatureDefinedClosed : D.signatureDefined

def DualityTheoremClosed (D : DualityTheoremPackage) : Prop :=
  D.poincareDualityHolds ∧ D.intersectionPairing ∧ D.signatureDefined

theorem duality_theorem_closed_from_evidence (D : DualityTheoremPackage) (E : DualityTheoremEvidence D) :
    DualityTheoremClosed D := by
  exact And.intro E.poincareDualityHoldsClosed (And.intro E.intersectionPairingClosed E.signatureDefinedClosed)

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse