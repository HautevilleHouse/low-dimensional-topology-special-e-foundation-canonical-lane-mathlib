import canonicalLaneMathlib.AdmissibleClass

/-!
# Duality Theorem Package for Low Dimensional Topology
-/

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure DualityTheoremPackage where
  poincareDuality : Prop
  alexanderDuality : Prop
  lefschetzDuality : Prop
  intersectionForms : Prop

structure DualityEvidence (D : DualityTheoremPackage) where
  poincareDualityClosed : D.poincareDuality
  alexanderDualityClosed : D.alexanderDuality
  lefschetzDualityClosed : D.lefschetzDuality
  intersectionFormsClosed : D.intersectionForms

def DualityClosed (D : DualityTheoremPackage) : Prop :=
  D.poincareDuality ∧ D.alexanderDuality ∧ D.lefschetzDuality ∧ D.intersectionForms

theorem duality_closed_from_evidence (D : DualityTheoremPackage) (E : DualityEvidence D) : DualityClosed D := by
  exact And.intro E.poincareDualityClosed (And.intro E.alexanderDualityClosed (And.intro E.lefschetzDualityClosed E.intersectionFormsClosed))

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse