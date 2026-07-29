import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensional

structure AdmissibleClass where
  object : AdmittedGroupObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupStructuresGeneralizationsInfiniteDimensional
end HautevilleHouse