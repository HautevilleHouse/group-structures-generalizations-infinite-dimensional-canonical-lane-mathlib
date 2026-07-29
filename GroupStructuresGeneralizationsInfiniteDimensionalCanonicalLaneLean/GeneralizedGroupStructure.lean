import canonicalLaneMathlib.GeneralizedGroupStructure

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensional

structure GeneralizedGroup where
  carrier : Type
  partialOperation : carrier → carrier → Option carrier
  identity : carrier
  invertible : carrier → Prop
  associativityWhereDefined : Prop
  identityProperties : Prop
  invertibilityProperties : Prop

structure GeneralizedGroupEvidence (G : GeneralizedGroup) where
  associativityWhereDefinedClosed : G.associativityWhereDefined
  identityPropertiesClosed : G.identityProperties
  invertibilityPropertiesClosed : G.invertibilityProperties

def GeneralizedGroupClosed (G : GeneralizedGroup) : Prop :=
  G.associativityWhereDefined ∧ G.identityProperties ∧ G.invertibilityProperties

theorem generalized_group_closed_from_evidence
    (G : GeneralizedGroup) (E : GeneralizedGroupEvidence G) :
    GeneralizedGroupClosed G := by
  exact And.intro E.associativityWhereDefinedClosed
    (And.intro E.identityPropertiesClosed E.invertibilityPropertiesClosed)

end GroupStructuresGeneralizationsInfiniteDimensional
end HautevilleHouse