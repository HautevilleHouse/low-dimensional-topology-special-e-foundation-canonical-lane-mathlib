import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure LowDimAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  dimension : Prop
  closedOrientable : Prop
  simpleConnected : Prop
  conclusion : closedOrientable ∧ simpleConnected

structure AdmissibleClass where
  object : LowDimAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  objectClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse