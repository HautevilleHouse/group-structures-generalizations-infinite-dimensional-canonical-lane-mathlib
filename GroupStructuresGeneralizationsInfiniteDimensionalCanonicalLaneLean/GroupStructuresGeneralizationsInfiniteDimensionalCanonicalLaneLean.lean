import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure InfiniteGroupPackage where
  carrier : Type u
  groupOperation : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  groupLaws : Prop
  infiniteCardinal : Prop
  generalizedStructure : Prop

structure InfiniteGroupEvidence (G : InfiniteGroupPackage) where
  groupLawsClosed : G.groupLaws
  infiniteCardinalClosed : G.infiniteCardinal
  generalizedStructureClosed : G.generalizedStructure

def InfiniteGroupClosed (G : InfiniteGroupPackage) : Prop :=
  G.groupLaws ∧ G.infiniteCardinal ∧ G.generalizedStructure

theorem infinite_group_closed_from_evidence (G : InfiniteGroupPackage) (E : InfiniteGroupEvidence G) : InfiniteGroupClosed G :=
  And.intro E.groupLawsClosed (And.intro E.infiniteCardinalClosed E.generalizedStructureClosed)

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse