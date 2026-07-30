import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeParameters : Prop
  bravaisLatticeType : Prop
  symmetryOperations : Prop
  diffractionPatternIndexed : Prop
  unitCellVolume : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeParametersClosed : C.latticeParameters
  bravaisLatticeTypeClosed : C.bravaisLatticeType
  symmetryOperationsClosed : C.symmetryOperations
  diffractionPatternIndexedClosed : C.diffractionPatternIndexed
  unitCellVolumeClosed : C.unitCellVolume

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeParameters ∧ C.bravaisLatticeType ∧ C.symmetryOperations ∧ C.diffractionPatternIndexed ∧ C.unitCellVolume

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeParametersClosed
    (And.intro E.bravaisLatticeTypeClosed
      (And.intro E.symmetryOperationsClosed
        (And.intro E.diffractionPatternIndexedClosed E.unitCellVolumeClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse