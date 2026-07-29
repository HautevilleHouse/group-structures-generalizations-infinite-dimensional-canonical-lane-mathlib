import canonicalLaneMathlib.InfiniteDimensionalMSC

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensional

structure InfiniteDimensionalGroupPackage where
  underlyingGroup : Type
  operation : underlyingGroup → underlyingGroup → underlyingGroup
  identity : underlyingGroup
  inverse : underlyingGroup → underlyingGroup
  groupAxioms : GroupAxioms operation identity inverse
  infiniteDimensionalBasis : Prop
  basisClosed : infiniteDimensionalBasis

structure GroupAxioms (G : Type) (mul : G → G → G) (one : G) (inv : G → G) : Prop where
  mul_assoc : ∀ a b c : G, mul (mul a b) c = mul a (mul b c)
  one_mul : ∀ a : G, mul one a = a
  mul_one : ∀ a : G, mul a one = a
  mul_left_inv : ∀ a : G, mul (inv a) a = one

structure InfiniteDimensionalGroupEvidence (P : InfiniteDimensionalGroupPackage) where
  groupAxiomsClosed : P.groupAxioms
  basisClosedClosed : P.basisClosed

def InfiniteDimensionalGroupClosed (P : InfiniteDimensionalGroupPackage) : Prop :=
  P.groupAxioms ∧ P.infiniteDimensionalBasis

theorem infinite_dimensional_group_closed_from_evidence
    (P : InfiniteDimensionalGroupPackage) (E : InfiniteDimensionalGroupEvidence P) :
    InfiniteDimensionalGroupClosed P := by
  exact And.intro E.groupAxiomsClosed E.basisClosedClosed

end GroupStructuresGeneralizationsInfiniteDimensional
end HautevilleHouse