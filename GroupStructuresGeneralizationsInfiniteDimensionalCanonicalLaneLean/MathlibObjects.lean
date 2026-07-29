import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure InfiniteDimensionalGroup where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  groupAxioms : Prop
  infiniteDimensional : Prop

structure AdmittedObject where
  group : InfiniteDimensionalGroup
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse