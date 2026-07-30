import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure TTTAndCCTDiagramPackage where
  austeniteTemperature : Prop
  startCurve : Prop
  finishCurve : Prop
  martensiteStart : Prop
  criticalCoolingRate : Prop

structure TTTAndCCTDiagramEvidence (T : TTTAndCCTDiagramPackage) where
  austeniteTemperatureClosed : T.austeniteTemperature
  startCurveClosed : T.startCurve
  finishCurveClosed : T.finishCurve
  martensiteStartClosed : T.martensiteStart
  criticalCoolingRateClosed : T.criticalCoolingRate

def TTTAndCCTDiagramClosed (T : TTTAndCCTDiagramPackage) : Prop :=
  T.austeniteTemperature ∧ T.startCurve ∧ T.finishCurve ∧ T.martensiteStart ∧ T.criticalCoolingRate

theorem ttt_and_cct_diagram_closed_from_evidence (T : TTTAndCCTDiagramPackage) (E : TTTAndCCTDiagramEvidence T) : TTTAndCCTDiagramClosed T := by
  exact And.intro E.austeniteTemperatureClosed (And.intro E.startCurveClosed (And.intro E.finishCurveClosed (And.intro E.martensiteStartClosed E.criticalCoolingRateClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse