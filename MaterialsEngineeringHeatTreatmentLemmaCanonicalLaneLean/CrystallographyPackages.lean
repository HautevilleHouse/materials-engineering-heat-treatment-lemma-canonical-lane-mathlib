import MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.PhaseDiagrams

/-!
# Crystallography Packages
-/

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Prop
  bravaisLatticeType : Prop
  unitCellGeometry : Prop
  symmetryOperations : Prop
  diffractionPatternSimulated : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  bravaisLatticeTypeClosed : C.bravaisLatticeType
  unitCellGeometryClosed : C.unitCellGeometry
  symmetryOperationsClosed : C.symmetryOperations
  diffractionPatternSimulatedClosed : C.diffractionPatternSimulated

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.bravaisLatticeType ∧ C.unitCellGeometry ∧ C.symmetryOperations ∧ C.diffractionPatternSimulated

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed
    (And.intro E.bravaisLatticeTypeClosed
      (And.intro E.unitCellGeometryClosed
        (And.intro E.symmetryOperationsClosed E.diffractionPatternSimulatedClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse