import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure QuenchingProcessPackage where
  coolingMedium : String
  heatTransferCoefficient : Prop
  thermalGradient : Prop
  residualStress : Prop
  hardnessAchieved : Prop
  distortionControlled : Prop
  phaseFractions : List String

structure QuenchingProcessEvidence (C : QuenchingProcessPackage) where
  heatTransferCoefficientClosed : C.heatTransferCoefficient
  thermalGradientClosed : C.thermalGradient
  residualStressClosed : C.residualStress
  hardnessAchievedClosed : C.hardnessAchieved
  distortionControlledClosed : C.distortionControlled

def QuenchingProcessClosed (C : QuenchingProcessPackage) : Prop :=
  C.heatTransferCoefficient ∧ C.thermalGradient ∧
  C.residualStress ∧ C.hardnessAchieved ∧ C.distortionControlled

theorem quenching_process_closed_from_evidence
    (C : QuenchingProcessPackage) (E : QuenchingProcessEvidence C) :
    QuenchingProcessClosed C := by
  exact And.intro E.heatTransferCoefficientClosed
    (And.intro E.thermalGradientClosed
      (And.intro E.residualStressClosed
        (And.intro E.hardnessAchievedClosed E.distortionControlledClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse