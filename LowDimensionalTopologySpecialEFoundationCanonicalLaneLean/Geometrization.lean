import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.ClassificationInvariants

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure GeometrizationPackage (P : DualityInvariancePackage)
    (C : ClassificationInvariantsPackage P) where
  primeDecompositionExists : Prop
  torusDecompositionExists : Prop
  geometricPiecesClassified : Prop
  hyperbolizationForTorusPieces : Prop

structure GeometrizationEvidence {P : DualityInvariancePackage}
    {C : ClassificationInvariantsPackage P} (G : GeometrizationPackage P C) where
  primeDecompositionExistsClosed : G.primeDecompositionExists
  torusDecompositionExistsClosed : G.torusDecompositionExists
  geometricPiecesClassifiedClosed : G.geometricPiecesClassified
  hyperbolizationForTorusPiecesClosed : G.hyperbolizationForTorusPieces

def GeometrizationClosed {P : DualityInvariancePackage}
    {C : ClassificationInvariantsPackage P} (G : GeometrizationPackage P C) : Prop :=
  G.primeDecompositionExists ∧ G.torusDecompositionExists ∧
  G.geometricPiecesClassified ∧ G.hyperbolizationForTorusPieces

theorem geometrization_closed_from_evidence {P : DualityInvariancePackage}
    {C : ClassificationInvariantsPackage P} (G : GeometrizationPackage P C)
    (E : GeometrizationEvidence G) : GeometrizationClosed G := by
  exact And.intro E.primeDecompositionExistsClosed
    (And.intro E.torusDecompositionExistsClosed
      (And.intro E.geometricPiecesClassifiedClosed E.hyperbolizationForTorusPiecesClosed))

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse