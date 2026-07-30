import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure AnnealingModelPackage where
  initialMicrostructure : Type u
  temperature : Type v
  time : Type w
  recrystallization : Prop
  grainGrowth : Prop
  recovery : Prop
  textureEvolution : Prop
  softening : Prop

structure AnnealingModelEvidence (C : AnnealingModelPackage) where
  recrystallizationClosed : C.recrystallization
  grainGrowthClosed : C.grainGrowth
  recoveryClosed : C.recovery
  textureEvolutionClosed : C.textureEvolution
  softeningClosed : C.softening

def AnnealingModelClosed (C : AnnealingModelPackage) : Prop :=
  C.recrystallization ∧ C.grainGrowth ∧ C.recovery ∧
  C.textureEvolution ∧ C.softening

theorem annealing_model_closed_from_evidence
    (C : AnnealingModelPackage) (E : AnnealingModelEvidence C) :
    AnnealingModelClosed C := by
  exact And.intro E.recrystallizationClosed
    (And.intro E.grainGrowthClosed
      (And.intro E.recoveryClosed
        (And.intro E.textureEvolutionClosed E.softeningClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse