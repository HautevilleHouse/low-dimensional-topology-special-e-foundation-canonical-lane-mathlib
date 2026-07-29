import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LowDimWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse