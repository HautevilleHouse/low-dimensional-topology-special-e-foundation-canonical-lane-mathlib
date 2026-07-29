import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure LowDimTopologyAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  closedOrientableManifold : Prop
  dimensionLessThanFive : Prop
  admitsThinPosition : Prop
  conclusion : admitsThinPosition

structure AdmissibleClass where
  object : LowDimTopologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LowDimWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def LowDimWitnessClosed (O : LowDimTopologyAdmittedObject) : Prop :=
  O.admitsThinPosition

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse