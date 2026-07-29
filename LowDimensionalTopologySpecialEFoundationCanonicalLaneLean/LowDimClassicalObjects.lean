import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure LowDimSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LowDimAdmittedObject where
  space : LowDimSpace
  closedManifold : Prop
  dimensionTwoOrThree : Prop
  classificationModel : Type
  classificationTopology : TopologicalSpace classificationModel
  homeomorphicToModel : Prop
  conclusion : homeomorphicToModel

def LowDimBridgeClosed (O : LowDimAdmittedObject) : Prop :=
  O.homeomorphicToModel

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse