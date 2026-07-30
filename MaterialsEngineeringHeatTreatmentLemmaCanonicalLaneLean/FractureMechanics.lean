import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackGrowthCriterion : Prop
  parisLaw : Prop
  cyclicLoading : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackGrowthCriterionClosed : F.crackGrowthCriterion
  parisLawClosed : F.parisLaw
  cyclicLoadingClosed : F.cyclicLoading

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackGrowthCriterion ∧ F.parisLaw ∧ F.cyclicLoading

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.crackGrowthCriterionClosed
        (And.intro E.parisLawClosed E.cyclicLoadingClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse