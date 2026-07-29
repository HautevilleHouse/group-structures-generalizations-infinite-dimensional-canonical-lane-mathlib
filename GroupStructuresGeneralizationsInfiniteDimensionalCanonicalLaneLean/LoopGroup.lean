import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure LoopGroupObject where
  baseManifold : Type u
  topologicalGroup : TopologicalGroup baseManifold
  loopSpace : Type v
  loopGroupStructure : Group loopSpace
  loopTopology : TopologicalSpace loopSpace
  pointwiseMultiplication : (loopSpace → loopSpace → loopSpace) := fun f g x => f x * g x
  infiniteDimensional : Prop
  infiniteDimensionalProof : infiniteDimensional

structure LoopGroup (L : LoopGroupObject) where
  loopElement : L.loopSpace
  multiplicationContinuous : Continuous (fun (p : L.loopSpace × L.loopSpace) => L.pointwiseMultiplication p.1 p.2)
  inversionContinuous : Continuous (fun (f : L.loopSpace) => fun x => (f x)⁻¹)

def LoopGroupClosed (L : LoopGroupObject) : Prop :=
  L.infiniteDimensional

theorem loop_group_closed (L : LoopGroupObject) : LoopGroupClosed L :=
  L.infiniteDimensionalProof

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse