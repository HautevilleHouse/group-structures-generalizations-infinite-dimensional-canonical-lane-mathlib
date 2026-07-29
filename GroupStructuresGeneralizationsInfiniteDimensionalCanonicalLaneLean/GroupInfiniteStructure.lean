import canonicalLaneMathlib.GroupInfiniteStructure

namespace HautevilleHouse
namespace GroupStructuresGeneralizationsInfiniteDimensional

structure InfiniteDimensionalGroupObject where
  carrier : Type
  groupStructure : Group carrier
  infiniteDimensional : Prop
  additionalStructure : Prop
  conclusion : additionalStructure

structure AdmittedGroupObject where
  object : InfiniteDimensionalGroupObject
  admitted : Prop
  conclusion : object.conclusion

def GroupWitnessClosed (O : AdmittedGroupObject) : Prop :=
  O.conclusion

end GroupStructuresGeneralizationsInfiniteDimensional
end HautevilleHouse