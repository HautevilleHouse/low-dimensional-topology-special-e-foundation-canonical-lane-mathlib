import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure ClassificationSurface where
  M : Type u
  genus : Nat
  orientable : Bool
  boundaryComponents : Nat
  eulerCharacteristic : Int

structure ClassificationSurfaceEvidence (S : ClassificationSurface) where
  genusClosed : S.genus ≥ 0
  orientableClosed : S.orientable
  eulerClosed : S.eulerCharacteristic = 2 - 2*S.genus - S.boundaryComponents

def ClassificationSurfaceClosed (S : ClassificationSurface) : Prop :=
  S.genus ≥ 0 ∧ S.orientable ∧ S.eulerCharacteristic = 2 - 2*S.genus - S.boundaryComponents

theorem classification_surface_closed_from_evidence (S : ClassificationSurface) (E : ClassificationSurfaceEvidence S) :
    ClassificationSurfaceClosed S := by
  exact And.intro E.genusClosed (And.intro E.orientableClosed E.eulerClosed)

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse