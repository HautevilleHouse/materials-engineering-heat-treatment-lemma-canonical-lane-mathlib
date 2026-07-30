import MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.MathlibObjects

/-!
# Phase Diagrams Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  binarySystem : Prop
  solidusLiquidusLines : Prop
  eutecticPoint : Prop
  solvusLines : Prop
  phaseRegions : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  binarySystemClosed : P.binarySystem
  solidusLiquidusLinesClosed : P.solidusLiquidusLines
  eutecticPointClosed : P.eutecticPoint
  solvusLinesClosed : P.solvusLines
  phaseRegionsClosed : P.phaseRegions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.binarySystem ∧ P.solidusLiquidusLines ∧ P.eutecticPoint ∧ P.solvusLines ∧ P.phaseRegions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.binarySystemClosed
    (And.intro E.solidusLiquidusLinesClosed
      (And.intro E.eutecticPointClosed
        (And.intro E.solvusLinesClosed E.phaseRegionsClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse