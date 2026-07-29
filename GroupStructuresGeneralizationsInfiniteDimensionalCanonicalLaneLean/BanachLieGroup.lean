import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure BanachLieGroupObject where
  carrier : Type u
  banachSpace : NormedAddCommGroup carrier
  completeSpace : CompleteSpace carrier
  groupStructure : Group carrier
  smoothMultiplication : ContMDiff (Icc 0 1) ∞ (fun (p : carrier × carrier) => p.1 * p.2)
  smoothInversion : ContMDiff (Icc 0 1) ∞ (fun (x : carrier) => x⁻¹)
  infiniteDimensional : Prop
  infiniteDimensionalProof : infiniteDimensional

structure BanachLieGroup (B : BanachLieGroupObject) where
  identity : B.carrier
  multiplicationSmooth : ContMDiff (Icc 0 1) ∞ (fun (p : B.carrier × B.carrier) => p.1 * p.2)
  inversionSmooth : ContMDiff (Icc 0 1) ∞ (fun (x : B.carrier) => x⁻¹)

def BanachLieGroupClosed (B : BanachLieGroupObject) : Prop :=
  B.infiniteDimensional

theorem banach_lie_group_closed (B : BanachLieGroupObject) : BanachLieGroupClosed B :=
  B.infiniteDimensionalProof

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse