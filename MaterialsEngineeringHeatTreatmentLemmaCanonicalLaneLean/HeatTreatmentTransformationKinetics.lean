import canonicalLaneMathlib.PhaseTransformation

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure HeatTreatmentKineticsPackage where
  timeTemperatureProfile : List (Float × Float)
  phaseFractionEvolution : List (Float × Float × Float)
  diffusionCoefficient : Float
  activationEnergy : Float
  nucleationRate : Float
  tttDiagramValidated : Prop

structure HeatTreatmentKineticsEvidence (K : HeatTreatmentKineticsPackage) where
  timeTemperatureProfileClosed : K.timeTemperatureProfile.length ≥ 20
  phaseFractionEvolutionClosed : K.phaseFractionEvolution.length ≥ 20
  diffusionCoefficientClosed : K.diffusionCoefficient > 0
  activationEnergyClosed : K.activationEnergy > 0
  nucleationRateClosed : K.nucleationRate > 0
  tttDiagramValidatedClosed : K.tttDiagramValidated

def HeatTreatmentKineticsClosed (K : HeatTreatmentKineticsPackage) : Prop :=
  K.timeTemperatureProfile.length ≥ 20 ∧ K.phaseFractionEvolution.length ≥ 20 ∧
  K.diffusionCoefficient > 0 ∧ K.activationEnergy > 0 ∧
  K.nucleationRate > 0 ∧ K.tttDiagramValidated

theorem heat_treatment_kinetics_closed_from_evidence (K : HeatTreatmentKineticsPackage) (E : HeatTreatmentKineticsEvidence K) : HeatTreatmentKineticsClosed K := by
  exact And.intro E.timeTemperatureProfileClosed (And.intro E.phaseFractionEvolutionClosed (And.intro E.diffusionCoefficientClosed (And.intro E.activationEnergyClosed (And.intro E.nucleationRateClosed E.tttDiagramValidatedClosed))))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse