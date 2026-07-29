import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure InfiniteDimensionalRepresentationPackage where
  vectorSpace : Type u
  groupAction : (g : InfiniteGroupPackage) → g.carrier → (vectorSpace → vectorSpace)
  representationLaws : Prop
  irreducible : Prop
  infiniteDimensional : Prop

structure InfiniteDimensionalRepresentationEvidence (R : InfiniteDimensionalRepresentationPackage) where
  representationLawsClosed : R.representationLaws
  irreducibleClosed : R.irreducible
  infiniteDimensionalClosed : R.infiniteDimensional

def InfiniteDimensionalRepresentationClosed (R : InfiniteDimensionalRepresentationPackage) : Prop :=
  R.representationLaws ∧ R.irreducible ∧ R.infiniteDimensional

theorem infinite_dimensional_representation_closed_from_evidence (R : InfiniteDimensionalRepresentationPackage) (E : InfiniteDimensionalRepresentationEvidence R) : InfiniteDimensionalRepresentationClosed R :=
  And.intro E.representationLawsClosed (And.intro E.irreducibleClosed E.infiniteDimensionalClosed)

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse