import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure KnotInvariant where
  knotType : Type u
  jonesPolynomial : polynomial ℤ
  alexanderPolynomial : polynomial ℤ
  hOMFLYPolynomial : polynomial ℤ
  khovanovHomology : Type v
  sliceGenus : ℤ

structure KnotInvariantEvidence (K : KnotInvariant) where
  jonesDefined : K.jonesPolynomial ≠ 0
  alexanderDefined : K.alexanderPolynomial ≠ 0
  hOMFLYDefined : K.hOMFLYPolynomial ≠ 0
  khovanovHomologyNonempty : Nonempty K.khovanovHomology
  sliceGenusClosed : K.sliceGenus ≥ -1

def KnotInvariantClosed (K : KnotInvariant) : Prop :=
  K.jonesPolynomial ≠ 0 ∧ K.alexanderPolynomial ≠ 0 ∧ K.hOMFLYPolynomial ≠ 0 ∧ Nonempty K.khovanovHomology ∧ K.sliceGenus ≥ -1

theorem knot_invariant_closed_from_evidence (K : KnotInvariant) (E : KnotInvariantEvidence K) :
    KnotInvariantClosed K := by
  exact And.intro E.jonesDefined (And.intro E.alexanderDefined (And.intro E.hOMFLYDefined (And.intro E.khovanovHomologyNonempty E.sliceGenusClosed)))

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse