import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialEFoundationCanonicalLaneLean

structure MappingClassGroup where
  surfaceType : Type u
  genus : Nat
  punctures : Nat
  groupPresented : Prop
  nielsenThurstonClassification : Prop

structure MappingClassGroupEvidence (G : MappingClassGroup) where
  groupPresentedClosed : G.groupPresented
  nielsenThurstonClassificationClosed : G.nielsenThurstonClassification

def MappingClassGroupClosed (G : MappingClassGroup) : Prop :=
  G.groupPresented ∧ G.nielsenThurstonClassification

theorem mapping_class_group_closed_from_evidence (G : MappingClassGroup) (E : MappingClassGroupEvidence G) :
    MappingClassGroupClosed G := by
  exact And.intro E.groupPresentedClosed E.nielsenThurstonClassificationClosed

end LowDimensionalTopologySpecialEFoundationCanonicalLaneLean
end HautevilleHouse