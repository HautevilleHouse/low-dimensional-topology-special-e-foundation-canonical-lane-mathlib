import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure TameEmbeddingPackage where
  twoComplex : Type u
  embeddingInFourSpace : topology -> Type v
  locallyFlat : Prop
  noSelfIntersections : Prop
  tameCondition : Prop

structure TameEmbeddingEvidence (T : TameEmbeddingPackage) where
  locallyFlatClosed : T.locallyFlat
  noSelfIntersectionsClosed : T.noSelfIntersections
  tameConditionClosed : T.tameCondition

def TameEmbeddingClosed (T : TameEmbeddingPackage) : Prop :=
  T.locallyFlat ∧ T.noSelfIntersections ∧ T.tameCondition

theorem tame_embedding_closed_from_evidence (T : TameEmbeddingPackage)
    (E : TameEmbeddingEvidence T) : TameEmbeddingClosed T := by
  exact And.intro E.locallyFlatClosed
    (And.intro E.noSelfIntersectionsClosed E.tameConditionClosed)

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse