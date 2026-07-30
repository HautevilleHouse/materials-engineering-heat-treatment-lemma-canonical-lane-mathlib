import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.PhaseDiagram
import HautevilleHouse.MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.TttDiagram
import HautevilleHouse.MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.QuenchingProcess
import HautevilleHouse.MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.HardnessPrediction
import HautevilleHouse.MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.AnnealingModel

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MaterialsEngineeringHeatTreatmentLemmaAdmittedObject where
  phaseDiagram : PhaseDiagramPackage
  tttDiagram : TttDiagramPackage
  quenchingProcess : QuenchingProcessPackage
  hardnessPrediction : HardnessPredictionPackage
  annealingModel : AnnealingModelPackage
  processingWindow : Prop
  finalProperties : Prop
  conclusion : processingWindow ∧ finalProperties

structure AdmissibleClass where
  object : MaterialsEngineeringHeatTreatmentLemmaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedHeatTreatmentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_heat_treatment_endgame (A : AdmissibleClass) :
    ConstrainedHeatTreatmentClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse