import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.ClassificationPackage

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure InvariancePackage (C : ClassificationPackage) where
  invarianceProperty : Prop
  invariancePropertyTerm : invarianceProperty

def InvarianceClosed {C : ClassificationPackage} (I : InvariancePackage C) : Prop :=
  I.invarianceProperty

theorem invariance_closed_from_package {C : ClassificationPackage} (I : InvariancePackage C) :
    InvarianceClosed I := by
  exact I.invariancePropertyTerm

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse