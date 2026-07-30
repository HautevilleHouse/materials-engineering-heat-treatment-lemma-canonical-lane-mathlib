import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  binarySystem : Type u
  solidusLines : Prop
  liquidusLines : Prop
  eutecticPoint : Prop
  leverRuleApplicable : Prop
  phaseFractionsDetermined : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  solidusLinesClosed : P.solidusLines
  liquidusLinesClosed : P.liquidusLines
  eutecticPointClosed : P.eutecticPoint
  leverRuleApplicableClosed : P.leverRuleApplicable
  phaseFractionsDeterminedClosed : P.phaseFractionsDetermined

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.solidusLines ∧ P.liquidusLines ∧ P.eutecticPoint ∧ P.leverRuleApplicable ∧ P.phaseFractionsDetermined

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.solidusLinesClosed (And.intro E.liquidusLinesClosed (And.intro E.eutecticPointClosed (And.intro E.leverRuleApplicableClosed E.phaseFractionsDeterminedClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse