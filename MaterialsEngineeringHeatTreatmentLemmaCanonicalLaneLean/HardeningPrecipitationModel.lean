import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure HardeningPrecipitationModelPackage where
  precipitationKinetics : Prop
  soluteDepletion : Prop
  hardnessEvolution : Prop
  optimalAgingTime : Prop

structure HardeningPrecipitationModelEvidence (H : HardeningPrecipitationModelPackage) where
  precipitationKineticsClosed : H.precipitationKinetics
  soluteDepletionClosed : H.soluteDepletion
  hardnessEvolutionClosed : H.hardnessEvolution
  optimalAgingTimeClosed : H.optimalAgingTime

def HardeningPrecipitationModelClosed (H : HardeningPrecipitationModelPackage) : Prop :=
  H.precipitationKinetics ∧ H.soluteDepletion ∧ H.hardnessEvolution ∧ H.optimalAgingTime

theorem hardening_precipitation_model_closed_from_evidence
    (H : HardeningPrecipitationModelPackage) (E : HardeningPrecipitationModelEvidence H) :
    HardeningPrecipitationModelClosed H := by
  exact And.intro E.precipitationKineticsClosed
    (And.intro E.soluteDepletionClosed
      (And.intro E.hardnessEvolutionClosed E.optimalAgingTimeClosed))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse