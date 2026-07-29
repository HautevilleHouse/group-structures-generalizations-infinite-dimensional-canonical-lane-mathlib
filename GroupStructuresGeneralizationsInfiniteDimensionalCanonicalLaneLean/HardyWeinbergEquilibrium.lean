import canonicalLaneMathlib.HardyWeinbergEquilibrium

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensional

structure HardyWeinbergEquilibrium where
  populationSize : ℕ
  alleleFrequencies : List ℝ
  expectedGenotypeFrequencies : List ℝ
  equilibriumCondition : Prop
  equilibriumHolds : equilibriumCondition

structure HardyWeinbergEvidence (H : HardyWeinbergEquilibrium) where
  equilibriumConditionClosed : H.equilibriumCondition
  equilibriumHoldsClosed : H.equilibriumHolds

def HardyWeinbergClosed (H : HardyWeinbergEquilibrium) : Prop :=
  H.equilibriumCondition ∧ H.equilibriumHolds

theorem hardy_weinberg_closed_from_evidence
    (H : HardyWeinbergEquilibrium) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact And.intro E.equilibriumConditionClosed E.equilibriumHoldsClosed

end GroupStructuresGeneralizationsInfiniteDimensional
end HautevilleHouse