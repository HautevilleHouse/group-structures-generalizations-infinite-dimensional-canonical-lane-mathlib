import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure PhylogeneticTree where
  leaves : List String
  topology : String
  branchLengths : List Float
  bootstrapSupport : Float

structure PhylogeneticsPackage where
  sequenceData : List String
  treeInferenceMethod : String
  inferredTree : PhylogeneticTree
  treeReliable : Prop
  treeInferred : Prop

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeReliable ∧ P.treeInferred

theorem phylogenetics_closed (P : PhylogeneticsPackage) : PhylogeneticsClosed P := by
  exact And.intro P.treeReliable P.treeInferred

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse