import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure InfiniteDimensionalLocalSplitting where
  totalSpace : Type u
  baseSpace : Type v
  fiberModel : Type w
  projectionDefined : Prop
  localTrivializationExists : Prop
  fiberwiseGroupAction : Prop
  projectionDefinedTerm : projectionDefined
  localTrivializationExistsTerm : localTrivializationExists
  fiberwiseGroupActionTerm : fiberwiseGroupAction

definition LocalSplittingEvidence (S : InfiniteDimensionalLocalSplitting) : Prop :=
  S.projectionDefined ∧ S.localTrivializationExists ∧ S.fiberwiseGroupAction

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse