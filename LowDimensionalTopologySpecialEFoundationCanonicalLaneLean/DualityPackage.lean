import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.InvariancePackage

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure DualityPackage (I : InvariancePackage) where
  dualityStatement : Prop
  dualityStatementTerm : dualityStatement

def DualityClosed {I : InvariancePackage} (D : DualityPackage I) : Prop :=
  D.dualityStatement

theorem duality_closed_from_package {I : InvariancePackage} (D : DualityPackage I) :
    DualityClosed D := by
  exact D.dualityStatementTerm

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse