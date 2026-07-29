import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure BanachLieGroupStructure where
  banachManifold : Type u
  smoothMultiplication : Prop
  smoothInverse : Prop
  identityElement : banachManifold
  multiplicationAssociative : Prop
  multiplicationAssociativeTerm : multiplicationAssociative

definition BanachLieGroupEvidence (G : BanachLieGroupStructure) : Prop :=
  G.smoothMultiplication ∧ G.smoothInverse ∧ G.multiplicationAssociative

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse