import canonicalLaneMathlib.Crystallography

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : String
  basisVectors : List (Float × Float × Float)
  symmetryGroup : String
  phaseTransitionPoints : List Float
  solidSolubilityLimit : Float
  phaseDiagramValidated : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeTypeClosed : C.latticeType ≠ ""
  basisVectorsClosed : C.basisVectors.length ≥ 3
  symmetryGroupClosed : C.symmetryGroup ∈ ["cubic", "hexagonal", "tetragonal", "orthorhombic"]
  phaseTransitionPointsClosed : C.phaseTransitionPoints.length ≥ 1
  solidSolubilityLimitClosed : C.solidSolubilityLimit > 0
  phaseDiagramValidatedClosed : C.phaseDiagramValidated

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeType ≠ "" ∧ C.basisVectors.length ≥ 3 ∧
  C.symmetryGroup ∈ ["cubic", "hexagonal", "tetragonal", "orthorhombic"] ∧
  C.phaseTransitionPoints.length ≥ 1 ∧ C.solidSolubilityLimit > 0 ∧ C.phaseDiagramValidated

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeTypeClosed (And.intro E.basisVectorsClosed (And.intro E.symmetryGroupClosed (And.intro E.phaseTransitionPointsClosed (And.intro E.solidSolubilityLimitClosed E.phaseDiagramValidatedClosed))))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse