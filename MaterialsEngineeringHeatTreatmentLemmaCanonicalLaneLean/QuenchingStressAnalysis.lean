import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure QuenchingStressAnalysisPackage where
  thermalGradient : Prop
  phaseTransformationStrain : Prop
  residualStressDistribution : Prop
  quenchCrackFormation : Prop

structure QuenchingStressAnalysisEvidence (Q : QuenchingStressAnalysisPackage) where
  thermalGradientClosed : Q.thermalGradient
  phaseTransformationStrainClosed : Q.phaseTransformationStrain
  residualStressDistributionClosed : Q.residualStressDistribution
  quenchCrackFormationClosed : Q.quenchCrackFormation

def QuenchingStressAnalysisClosed (Q : QuenchingStressAnalysisPackage) : Prop :=
  Q.thermalGradient ∧ Q.phaseTransformationStrain ∧ Q.residualStressDistribution ∧ Q.quenchCrackFormation

theorem quenching_stress_analysis_closed_from_evidence
    (Q : QuenchingStressAnalysisPackage) (E : QuenchingStressAnalysisEvidence Q) :
    QuenchingStressAnalysisClosed Q := by
  exact And.intro E.thermalGradientClosed
    (And.intro E.phaseTransformationStrainClosed
      (And.intro E.residualStressDistributionClosed E.quenchCrackFormationClosed))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse