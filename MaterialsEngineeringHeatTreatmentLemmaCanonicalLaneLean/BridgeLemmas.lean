import MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HeatTreatmentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse