import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure KacMoodyAlgebraPackage where
  generalizedCartanMatrix : Matrix ℕ ℕ ℤ
  chevalleyGenerators : Type u
  serreRelations : Prop
  rootSpaceDecomposition : Prop
  weylGroup : Prop
  integrableModules : Prop
  infiniteDimensional : Prop

structure KacMoodyAlgebraEvidence (K : KacMoodyAlgebraPackage) where
  serreRelationsClosed : K.serreRelations
  rootSpaceDecompositionClosed : K.rootSpaceDecomposition
  weylGroupClosed : K.weylGroup
  integrableModulesClosed : K.integrableModules
  infiniteDimensionalClosed : K.infiniteDimensional

def KacMoodyAlgebraClosed (K : KacMoodyAlgebraPackage) : Prop :=
  K.serreRelations ∧ K.rootSpaceDecomposition ∧ K.weylGroup ∧ K.integrableModules ∧ K.infiniteDimensional

theorem kac_moody_algebra_closed_from_evidence (K : KacMoodyAlgebraPackage) (E : KacMoodyAlgebraEvidence K) : KacMoodyAlgebraClosed K :=
  And.intro E.serreRelationsClosed (And.intro E.rootSpaceDecompositionClosed (And.intro E.weylGroupClosed (And.intro E.integrableModulesClosed E.infiniteDimensionalClosed)))

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse