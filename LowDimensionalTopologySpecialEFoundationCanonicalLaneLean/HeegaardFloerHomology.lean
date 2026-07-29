import canonicalLaneMathlib.AdmissibleClass
import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.DualityTheoremPackage

/-!
# Heegaard Floer Homology Package
-/

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure HeegaardFloerPackage where
  chainComplex : Prop
  homologyGroups : Prop
  spectralSequence : Prop
  correctionTerms : Prop

structure HeegaardFloerEvidence (H : HeegaardFloerPackage) where
  chainComplexClosed : H.chainComplex
  homologyGroupsClosed : H.homologyGroups
  spectralSequenceClosed : H.spectralSequence
  correctionTermsClosed : H.correctionTerms

def HeegaardFloerClosed (H : HeegaardFloerPackage) : Prop :=
  H.chainComplex ∧ H.homologyGroups ∧ H.spectralSequence ∧ H.correctionTerms

theorem heegaard_floer_closed_from_evidence (H : HeegaardFloerPackage) (E : HeegaardFloerEvidence H) : HeegaardFloerClosed H := by
  exact And.intro E.chainComplexClosed (And.intro E.homologyGroupsClosed (And.intro E.spectralSequenceClosed E.correctionTermsClosed))

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse