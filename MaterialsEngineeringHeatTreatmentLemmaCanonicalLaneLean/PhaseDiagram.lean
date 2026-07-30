import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List String
  temperatureRange : Prop
  compositionRange : Prop
  equilibriumPhases : List String
  phaseBoundariesDetermined : Prop
  eutecticPoint : Prop
  peritecticPoint : Prop

structure PhaseDiagramEvidence (C : PhaseDiagramPackage) where
  temperatureRangeClosed : C.temperatureRange
  compositionRangeClosed : C.compositionRange
  phaseBoundariesDeterminedClosed : C.phaseBoundariesDetermined
  eutecticPointClosed : C.eutecticPoint
  peritecticPointClosed : C.peritecticPoint

def PhaseDiagramClosed (C : PhaseDiagramPackage) : Prop :=
  C.temperatureRange ∧ C.compositionRange ∧
  C.phaseBoundariesDetermined ∧ C.eutecticPoint ∧ C.peritecticPoint

theorem phase_diagram_closed_from_evidence
    (C : PhaseDiagramPackage) (E : PhaseDiagramEvidence C) :
    PhaseDiagramClosed C := by
  exact And.intro E.temperatureRangeClosed
    (And.intro E.compositionRangeClosed
      (And.intro E.phaseBoundariesDeterminedClosed
        (And.intro E.eutecticPointClosed E.peritecticPointClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse