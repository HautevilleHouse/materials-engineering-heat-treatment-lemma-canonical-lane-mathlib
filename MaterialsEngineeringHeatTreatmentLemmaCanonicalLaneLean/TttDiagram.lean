import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure TttDiagramPackage where
  temperature : Type u
  time : Type v
  phaseTransformed : List String
  startCurve : Prop
  finishCurve : Prop
  bainiteNose : Prop
  martensiteStart : Prop
  criticalCoolingRate : Prop

structure TttDiagramEvidence (C : TttDiagramPackage) where
  startCurveClosed : C.startCurve
  finishCurveClosed : C.finishCurve
  bainiteNoseClosed : C.bainiteNose
  martensiteStartClosed : C.martensiteStart
  criticalCoolingRateClosed : C.criticalCoolingRate

def TttDiagramClosed (C : TttDiagramPackage) : Prop :=
  C.startCurve ∧ C.finishCurve ∧ C.bainiteNose ∧
  C.martensiteStart ∧ C.criticalCoolingRate

theorem ttt_diagram_closed_from_evidence
    (C : TttDiagramPackage) (E : TttDiagramEvidence C) :
    TttDiagramClosed C := by
  exact And.intro E.startCurveClosed
    (And.intro E.finishCurveClosed
      (And.intro E.bainiteNoseClosed
        (And.intro E.martensiteStartClosed E.criticalCoolingRateClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse