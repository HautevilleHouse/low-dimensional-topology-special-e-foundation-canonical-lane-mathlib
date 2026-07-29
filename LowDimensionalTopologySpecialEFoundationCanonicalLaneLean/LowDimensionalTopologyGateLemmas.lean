import canonicalLaneMathlib.AdmissibleClass
import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.LowDimensionalTopologyBridgeLemmas

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse