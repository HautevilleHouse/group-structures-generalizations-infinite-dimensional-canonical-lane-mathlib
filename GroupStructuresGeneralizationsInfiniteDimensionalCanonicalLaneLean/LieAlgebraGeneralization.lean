import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure InfiniteDimensionalLieAlgebraPackage where
  vectorSpace : Type u
  lieBracket : vectorSpace → vectorSpace → vectorSpace
  bilinearity : Prop
  antisymmetry : Prop
  jacobiIdentity : Prop
  infiniteDimensional : Prop
  fieldCharacteristicZero : Prop

structure InfiniteDimensionalLieAlgebraEvidence (L : InfiniteDimensionalLieAlgebraPackage) where
  bilinearityClosed : L.bilinearity
  antisymmetryClosed : L.antisymmetry
  jacobiIdentityClosed : L.jacobiIdentity
  infiniteDimensionalClosed : L.infiniteDimensional
  fieldCharacteristicZeroClosed : L.fieldCharacteristicZero

def InfiniteDimensionalLieAlgebraClosed (L : InfiniteDimensionalLieAlgebraPackage) : Prop :=
  L.bilinearity ∧ L.antisymmetry ∧ L.jacobiIdentity ∧ L.infiniteDimensional ∧ L.fieldCharacteristicZero

theorem infinite_dimensional_lie_algebra_closed_from_evidence (L : InfiniteDimensionalLieAlgebraPackage) (E : InfiniteDimensionalLieAlgebraEvidence L) : InfiniteDimensionalLieAlgebraClosed L :=
  And.intro E.bilinearityClosed (And.intro E.antisymmetryClosed (And.intro E.jacobiIdentityClosed (And.intro E.infiniteDimensionalClosed E.fieldCharacteristicZeroClosed)))

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse