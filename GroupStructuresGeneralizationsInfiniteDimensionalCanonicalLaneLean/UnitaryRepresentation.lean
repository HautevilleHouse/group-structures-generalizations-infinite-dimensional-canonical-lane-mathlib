import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean

structure UnitaryRepresentationPackage where
  hilbertSpace : Type u
  innerProduct : hilbertSpace → hilbertSpace → ℂ
  unitaryOperators : (g : InfiniteGroupPackage) → g.carrier → (hilbertSpace → hilbertSpace)
  representationLaws : Prop
  unitarity : Prop
  continuity : Prop

structure UnitaryRepresentationEvidence (U : UnitaryRepresentationPackage) where
  representationLawsClosed : U.representationLaws
  unitarityClosed : U.unitarity
  continuityClosed : U.continuity

def UnitaryRepresentationClosed (U : UnitaryRepresentationPackage) : Prop :=
  U.representationLaws ∧ U.unitarity ∧ U.continuity

theorem unitary_representation_closed_from_evidence (U : UnitaryRepresentationPackage) (E : UnitaryRepresentationEvidence U) : UnitaryRepresentationClosed U :=
  And.intro E.representationLawsClosed (And.intro E.unitarityClosed E.continuityClosed)

end GroupStructuresGeneralizationsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse