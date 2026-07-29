import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.LowDimClassicalObjects

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure ClassificationPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  classificationType : String
  classificationResult : Prop
  classificationResultTerm : classificationResult

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.classificationResult

theorem classification_closed_from_package (C : ClassificationPackage) :
    ClassificationClosed C := by
  exact C.classificationResultTerm

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse