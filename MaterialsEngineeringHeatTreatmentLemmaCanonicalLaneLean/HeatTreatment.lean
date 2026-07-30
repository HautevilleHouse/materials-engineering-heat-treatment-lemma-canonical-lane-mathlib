import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure HeatTreatmentPackage where
  quenchingRate : Prop
  temperingTemperature : Prop
  precipitationKinetics : Prop
  hardnessProfile : Prop
  residualStress : Prop
  transformationDiagram : Prop

structure HeatTreatmentEvidence (H : HeatTreatmentPackage) where
  quenchingRateClosed : H.quenchingRate
  temperingTemperatureClosed : H.temperingTemperature
  precipitationKineticsClosed : H.precipitationKinetics
  hardnessProfileClosed : H.hardnessProfile
  residualStressClosed : H.residualStress
  transformationDiagramClosed : H.transformationDiagram

def HeatTreatmentClosed (H : HeatTreatmentPackage) : Prop :=
  H.quenchingRate ∧ H.temperingTemperature ∧ H.precipitationKinetics ∧ H.hardnessProfile ∧ H.residualStress ∧ H.transformationDiagram

theorem heat_treatment_closed_from_evidence (H : HeatTreatmentPackage) (E : HeatTreatmentEvidence H) :
    HeatTreatmentClosed H := by
  exact And.intro E.quenchingRateClosed
    (And.intro E.temperingTemperatureClosed
      (And.intro E.precipitationKineticsClosed
        (And.intro E.hardnessProfileClosed
          (And.intro E.residualStressClosed E.transformationDiagramClosed))))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse