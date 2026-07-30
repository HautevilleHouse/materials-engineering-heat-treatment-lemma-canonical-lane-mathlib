import MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : HeatTreatmentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HeatTreatmentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse