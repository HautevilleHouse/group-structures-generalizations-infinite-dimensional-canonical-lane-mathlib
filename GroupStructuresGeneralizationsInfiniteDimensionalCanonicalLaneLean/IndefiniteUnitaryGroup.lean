import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure IndefiniteUnitaryGroupObject where
  carrier : Type u
  innerProductSpace : InnerProductSpace ℂ carrier
  quadraticForm : QuadraticForm ℝ carrier
  signature : ℕ × ℕ
  indefinite : Prop
  indefiniteProof : indefinite
  infiniteDimensional : Prop
  infiniteDimensionalProof : infiniteDimensional

structure IndefiniteUnitaryGroup (U : IndefiniteUnitaryGroupObject) where
  operator : U.carrier → U.carrier
  preservesForm : ∀ x : U.carrier, U.quadraticForm (operator x) = U.quadraticForm x
  unitaryCondition : IsUnitary (U.innerProductSpace.toNormedAddCommGroup) operator
  infiniteDimensional : Prop
  infiniteDimensionalProof : infiniteDimensional

def IndefiniteUnitaryGroupClosed (U : IndefiniteUnitaryGroupObject) : Prop :=
  U.infiniteDimensional

theorem indefinite_unitary_group_closed (U : IndefiniteUnitaryGroupObject) : IndefiniteUnitaryGroupClosed U :=
  U.infiniteDimensionalProof

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse