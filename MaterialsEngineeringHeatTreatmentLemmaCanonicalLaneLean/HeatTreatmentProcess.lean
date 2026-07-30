import MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.CrystallographyPackages

/-!
# Heat Treatment Process Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure HeatTreatmentProcessPackage where
  temperatureProfile : Prop
  timeAtTemperature : Prop
  coolingRate : Prop
  quenchMedium : Prop
  diffusionControl : Prop

structure HeatTreatmentProcessEvidence (H : HeatTreatmentProcessPackage) where
  temperatureProfileClosed : H.temperatureProfile
  timeAtTemperatureClosed : H.timeAtTemperature
  coolingRateClosed : H.coolingRate
  quenchMediumClosed : H.quenchMedium
  diffusionControlClosed : H.diffusionControl

def HeatTreatmentProcessClosed (H : HeatTreatmentProcessPackage) : Prop :=
  H.temperatureProfile ∧ H.timeAtTemperature ∧ H.coolingRate ∧ H.quenchMedium ∧ H.diffusionControl

theorem heat_treatment_process_closed_from_evidence (H : HeatTreatmentProcessPackage) (E : HeatTreatmentProcessEvidence H) :
    HeatTreatmentProcessClosed H := by
  exact And.intro E.temperatureProfileClosed
    (And.intro E.timeAtTemperatureClosed
      (And.intro E.coolingRateClosed
        (And.intro E.quenchMediumClosed E.diffusionControlClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse