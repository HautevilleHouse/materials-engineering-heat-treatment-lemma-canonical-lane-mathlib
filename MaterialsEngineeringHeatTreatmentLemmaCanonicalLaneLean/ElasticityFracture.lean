import MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.MicrostructureEvolution

/-!
# Elasticity and Fracture Mechanics Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure ElasticityFracturePackage where
  elasticModulusDefined : Prop
  stressStrainRelation : Prop
  fractureToughness : Prop
  crackPropagationModel : Prop
  failureCriterion : Prop

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  elasticModulusDefinedClosed : E.elasticModulusDefined
  stressStrainRelationClosed : E.stressStrainRelation
  fractureToughnessClosed : E.fractureToughness
  crackPropagationModelClosed : E.crackPropagationModel
  failureCriterionClosed : E.failureCriterion

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.elasticModulusDefined ∧ E.stressStrainRelation ∧ E.fractureToughness ∧ E.crackPropagationModel ∧ E.failureCriterion

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage) (Ev : ElasticityFractureEvidence E) :
    ElasticityFractureClosed E := by
  exact And.intro Ev.elasticModulusDefinedClosed
    (And.intro Ev.stressStrainRelationClosed
      (And.intro Ev.fractureToughnessClosed
        (And.intro Ev.crackPropagationModelClosed Ev.failureCriterionClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse