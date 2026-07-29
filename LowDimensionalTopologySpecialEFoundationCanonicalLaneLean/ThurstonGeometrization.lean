import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure ThurstonGeometrization where
  M : Type u
  geometricDecomposition : Prop
  eightGeometries : Prop
  hyperbolization : Prop

structure ThurstonGeometrizationEvidence (T : ThurstonGeometrization) where
  geometricDecompositionClosed : T.geometricDecomposition
  eightGeometriesClosed : T.eightGeometries
  hyperbolizationClosed : T.hyperbolization

def ThurstonGeometrizationClosed (T : ThurstonGeometrization) : Prop :=
  T.geometricDecomposition ∧ T.eightGeometries ∧ T.hyperbolization

theorem thurston_geometrization_closed_from_evidence (T : ThurstonGeometrization) (E : ThurstonGeometrizationEvidence T) :
    ThurstonGeometrizationClosed T := by
  exact And.intro E.geometricDecompositionClosed (And.intro E.eightGeometriesClosed E.hyperbolizationClosed)

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse