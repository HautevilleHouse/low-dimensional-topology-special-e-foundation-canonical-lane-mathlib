import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure ThinPositionPackage where
  embeddingInHighDim : Type u
  projectionGeneric : Prop
  thinPositionExists : Prop
  bridgeCondition : Prop

structure ThinPositionEvidence (P : ThinPositionPackage) where
  projectionGenericClosed : P.projectionGeneric
  thinPositionExistsClosed : P.thinPositionExists
  bridgeConditionClosed : P.bridgeCondition

def ThinPositionClosed (P : ThinPositionPackage) : Prop :=
  P.projectionGeneric ∧ P.thinPositionExists ∧ P.bridgeCondition

theorem thin_position_closed_from_evidence (P : ThinPositionPackage) (E : ThinPositionEvidence P) :
    ThinPositionClosed P := by
  exact And.intro E.projectionGenericClosed (And.intro E.thinPositionExistsClosed E.bridgeConditionClosed)

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse