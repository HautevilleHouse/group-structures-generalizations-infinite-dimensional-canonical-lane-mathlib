import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequences : List String
  alignmentAlgorithm : String
  gapPenalty : Int
  similarityMatrix : String
  alignmentScore : Int
  optimalAlignment : Prop
  alignmentComputed : Prop

def SequenceAlignmentClosed (P : SequenceAlignmentPackage) : Prop :=
  P.optimalAlignment ∧ P.alignmentComputed

theorem sequence_alignment_closed (P : SequenceAlignmentPackage) : SequenceAlignmentClosed P := by
  exact And.intro P.optimalAlignment P.alignmentComputed

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse