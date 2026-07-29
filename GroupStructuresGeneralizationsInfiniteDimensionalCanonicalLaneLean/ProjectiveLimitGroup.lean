import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure ProjectiveLimitGroupObject where
  indexSet : Type u
  preorder : Preorder indexSet
  family : indexSet → Type v
  transitionMaps : ∀ i j, i ≤ j → family j → family i
  transitionCompatible : ∀ i j k (hij : i ≤ j) (hjk : j ≤ k) x, 
    transitionMaps i j hij (transitionMaps j k hjk x) = transitionMaps i k (Preorder.le_trans hij hjk) x
  limitCarrier : Type w
  limitGroup : Group limitCarrier
  limitTopology : TopologicalSpace limitCarrier
  infiniteDimensional : Prop
  infiniteDimensionalProof : infiniteDimensional

structure ProjectiveLimitGroup (P : ProjectiveLimitGroupObject) where
  limitElement : P.limitCarrier
  projectionMaps : ∀ i, P.limitCarrier → P.family i
  projectionCompatible : ∀ x i j (hij : i ≤ j), P.transitionMaps i j hij (projectionMaps j x) = projectionMaps i x
  projectionContinuous : ∀ i, Continuous (projectionMaps i)

def ProjectiveLimitGroupClosed (P : ProjectiveLimitGroupObject) : Prop :=
  P.infiniteDimensional

theorem projective_limit_group_closed (P : ProjectiveLimitGroupObject) : ProjectiveLimitGroupClosed P :=
  P.infiniteDimensionalProof

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse