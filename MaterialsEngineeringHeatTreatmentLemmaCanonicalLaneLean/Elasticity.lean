import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressStrainRelation : Prop
  youngModulus : Prop
  poissonRatio : Prop
  compatibilityEquations : Prop
  equilibriumEquations : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  compatibilityEquationsClosed : E.compatibilityEquations
  equilibriumEquationsClosed : E.equilibriumEquations

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.youngModulus ∧ E.poissonRatio ∧ E.compatibilityEquations ∧ E.equilibriumEquations

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.youngModulusClosed
      (And.intro Ev.poissonRatioClosed
        (And.intro Ev.compatibilityEquationsClosed Ev.equilibriumEquationsClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse