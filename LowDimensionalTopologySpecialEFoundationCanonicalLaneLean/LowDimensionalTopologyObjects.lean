import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ThreeManifoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LowDimensionalAdmittedObject where
  space : ThreeManifoldSpace
  closedOrientableThreeManifold : Prop
  homotopyEquivalentToSphere : Prop
  homologySpheres : Prop
  conclusion : closedOrientableThreeManifold ∧ homotopyEquivalentToSphere → homologySpheres

structure LowDimensionalEndgameState where
  object : LowDimensionalAdmittedObject

def LowDimensionalWitnessClosed (O : LowDimensionalAdmittedObject) : Prop :=
  O.homologySpheres

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse