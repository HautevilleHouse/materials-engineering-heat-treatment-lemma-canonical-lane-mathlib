import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure PhaseTransformationKineticsPackage where
  nucleationRate : Prop
  growthRate : Prop
  avramiEquation : Prop
  timeTemperatureTransformation : Prop

structure PhaseTransformationKineticsEvidence (P : PhaseTransformationKineticsPackage) where
  nucleationRateClosed : P.nucleationRate
  growthRateClosed : P.growthRate
  avramiEquationClosed : P.avramiEquation
  timeTemperatureTransformationClosed : P.timeTemperatureTransformation

def PhaseTransformationKineticsClosed (P : PhaseTransformationKineticsPackage) : Prop :=
  P.nucleationRate ∧ P.growthRate ∧ P.avramiEquation ∧ P.timeTemperatureTransformation

theorem phase_transformation_kinetics_closed_from_evidence
    (P : PhaseTransformationKineticsPackage) (E : PhaseTransformationKineticsEvidence P) :
    PhaseTransformationKineticsClosed P := by
  exact And.intro E.nucleationRateClosed
    (And.intro E.growthRateClosed
      (And.intro E.avramiEquationClosed E.timeTemperatureTransformationClosed))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse