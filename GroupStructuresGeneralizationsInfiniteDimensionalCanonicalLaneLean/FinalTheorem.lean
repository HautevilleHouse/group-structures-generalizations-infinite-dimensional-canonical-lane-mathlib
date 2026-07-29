import canonicalLaneMathlib.FinalTheorem

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensional

def ConstrainedGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_group_endgame (A : AdmissibleClass) :
    ConstrainedGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupStructuresGeneralizationsInfiniteDimensional
end HautevilleHouse