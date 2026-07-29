import canonicalLaneMathlib.AdmissibleClass
import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.HeegaardFloerHomology

/-!
# Knot Invariants Package
-/

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure KnotInvariantPackage where
  alexanderPolynomial : Prop
  jonesPolynomial : Prop
  khovanovHomology : Prop
  knotFloerHomology : Prop

structure KnotInvariantEvidence (K : KnotInvariantPackage) where
  alexanderPolynomialClosed : K.alexanderPolynomial
  jonesPolynomialClosed : K.jonesPolynomial
  khovanovHomologyClosed : K.khovanovHomology
  knotFloerHomologyClosed : K.knotFloerHomology

def KnotInvariantClosed (K : KnotInvariantPackage) : Prop :=
  K.alexanderPolynomial ∧ K.jonesPolynomial ∧ K.khovanovHomology ∧ K.knotFloerHomology

theorem knot_invariant_closed_from_evidence (K : KnotInvariantPackage) (E : KnotInvariantEvidence K) : KnotInvariantClosed K := by
  exact And.intro E.alexanderPolynomialClosed (And.intro E.jonesPolynomialClosed (And.intro E.khovanovHomologyClosed E.knotFloerHomologyClosed))

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse