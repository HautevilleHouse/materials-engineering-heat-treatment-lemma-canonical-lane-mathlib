import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure FickDiffusionPackage where
  concentrationField : Type u
  diffusionCoefficient : Prop
  ficksFirstLaw : Prop
  ficksSecondLaw : Prop
  boundaryConditions : Prop
  initialCondition : Prop
  solutionExists : Prop

structure FickDiffusionEvidence (F : FickDiffusionPackage) where
  diffusionCoefficientClosed : F.diffusionCoefficient
  ficksFirstLawClosed : F.ficksFirstLaw
  ficksSecondLawClosed : F.ficksSecondLaw
  boundaryConditionsClosed : F.boundaryConditions
  initialConditionClosed : F.initialCondition
  solutionExistsClosed : F.solutionExists

def FickDiffusionClosed (F : FickDiffusionPackage) : Prop :=
  F.diffusionCoefficient ∧ F.ficksFirstLaw ∧ F.ficksSecondLaw ∧ F.boundaryConditions ∧ F.initialCondition ∧ F.solutionExists

theorem fick_diffusion_closed_from_evidence (F : FickDiffusionPackage) (E : FickDiffusionEvidence F) : FickDiffusionClosed F := by
  exact And.intro E.diffusionCoefficientClosed (And.intro E.ficksFirstLawClosed (And.intro E.ficksSecondLawClosed (And.intro E.boundaryConditionsClosed (And.intro E.initialConditionClosed E.solutionExistsClosed))))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse