import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure EmbeddingClassificationPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  embeddingDimension : Nat
  embeddingClassified : Prop
  uniquenessResult : Prop

structure EmbeddingClassificationEvidence (E : EmbeddingClassificationPackage) where
  embeddingClassifiedClosed : E.embeddingClassified
  uniquenessResultClosed : E.uniquenessResult

def EmbeddingClassificationClosed (E : EmbeddingClassificationPackage) : Prop :=
  E.embeddingClassified ∧ E.uniquenessResult

theorem embedding_classification_closed_from_evidence (E : EmbeddingClassificationPackage) (Ev : EmbeddingClassificationEvidence E) :
    EmbeddingClassificationClosed E := by
  exact And.intro Ev.embeddingClassifiedClosed Ev.uniquenessResultClosed

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse