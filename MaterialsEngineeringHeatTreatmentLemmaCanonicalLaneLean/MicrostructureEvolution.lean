import MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.HeatTreatmentProcess

/-!
# Microstructure Evolution Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure MicrostructureEvolutionPackage where
  phaseTransformationKinetics : Prop
  grainGrowthModel : Prop
  precipitateFormation : Prop
  recrystallization : Prop
  textureEvolution : Prop

structure MicrostructureEvolutionEvidence (M : MicrostructureEvolutionPackage) where
  phaseTransformationKineticsClosed : M.phaseTransformationKinetics
  grainGrowthModelClosed : M.grainGrowthModel
  precipitateFormationClosed : M.precipitateFormation
  recrystallizationClosed : M.recrystallization
  textureEvolutionClosed : M.textureEvolution

def MicrostructureEvolutionClosed (M : MicrostructureEvolutionPackage) : Prop :=
  M.phaseTransformationKinetics ∧ M.grainGrowthModel ∧ M.precipitateFormation ∧ M.recrystallization ∧ M.textureEvolution

theorem microstructure_evolution_closed_from_evidence (M : MicrostructureEvolutionPackage) (E : MicrostructureEvolutionEvidence M) :
    MicrostructureEvolutionClosed M := by
  exact And.intro E.phaseTransformationKineticsClosed
    (And.intro E.grainGrowthModelClosed
      (And.intro E.precipitateFormationClosed
        (And.intro E.recrystallizationClosed E.textureEvolutionClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse