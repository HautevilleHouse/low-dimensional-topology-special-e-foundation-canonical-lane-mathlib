import canonicalLaneMathlib.AdmissibleClass
import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.LowDimensionalTopologyObjects

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LowDimensionalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion (by
    exact A.object.closedOrientableThreeManifold) (by
    exact A.object.homotopyEquivalentToSphere)

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse