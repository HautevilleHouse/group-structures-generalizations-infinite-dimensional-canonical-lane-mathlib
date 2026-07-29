import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure NoncollapsingEvidence where
  noLocalCollapsing : Prop
  scaleInvariantVolumeLowerBound : Prop
  curvatureScaleCompatibility : Prop
  ancientSolutionCompactnessInput : Prop

structure NoncollapsingAnalyticCertificate where
  evidence : NoncollapsingEvidence
  closed : evidence.noLocalCollapsing ∧ evidence.scaleInvariantVolumeLowerBound ∧
           evidence.curvatureScaleCompatibility ∧ evidence.ancientSolutionCompactnessInput

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse