import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure HardeningAndTemperingPackage where
  austenitizingTemperature : Prop
  quenchingMedium : Prop
  martensiticTransformation : Prop
  temperingTemperature : Prop
  precipitateFormation : Prop
  hardnessAchieved : Prop

structure HardeningAndTemperingEvidence (H : HardeningAndTemperingPackage) where
  austenitizingTemperatureClosed : H.austenitizingTemperature
  quenchingMediumClosed : H.quenchingMedium
  martensiticTransformationClosed : H.martensiticTransformation
  temperingTemperatureClosed : H.temperingTemperature
  precipitateFormationClosed : H.precipitateFormation
  hardnessAchievedClosed : H.hardnessAchieved

def HardeningAndTemperingClosed (H : HardeningAndTemperingPackage) : Prop :=
  H.austenitizingTemperature ∧ H.quenchingMedium ∧ H.martensiticTransformation ∧ H.temperingTemperature ∧ H.precipitateFormation ∧ H.hardnessAchieved

theorem hardening_and_tempering_closed_from_evidence (H : HardeningAndTemperingPackage) (E : HardeningAndTemperingEvidence H) : HardeningAndTemperingClosed H := by
  exact And.intro E.austenitizingTemperatureClosed (And.intro E.quenchingMediumClosed (And.intro E.martensiticTransformationClosed (And.intro E.temperingTemperatureClosed (And.intro E.precipitateFormationClosed E.hardnessAchievedClosed))))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse