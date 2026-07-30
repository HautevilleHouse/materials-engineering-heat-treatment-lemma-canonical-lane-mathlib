import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure HardnessPredictionPackage where
  composition : List String
  coolingRate : Prop
  grainSize : Prop
  hardnessValue : Prop
  jominyCurve : Prop
  hardenabilityFactor : Prop
  predictiveModel : Prop

structure HardnessPredictionEvidence (C : HardnessPredictionPackage) where
  coolingRateClosed : C.coolingRate
  grainSizeClosed : C.grainSize
  hardnessValueClosed : C.hardnessValue
  jominyCurveClosed : C.jominyCurve
  hardenabilityFactorClosed : C.hardenabilityFactor
  predictiveModelClosed : C.predictiveModel

def HardnessPredictionClosed (C : HardnessPredictionPackage) : Prop :=
  C.coolingRate ∧ C.grainSize ∧ C.hardnessValue ∧
  C.jominyCurve ∧ C.hardenabilityFactor ∧ C.predictiveModel

theorem hardness_prediction_closed_from_evidence
    (C : HardnessPredictionPackage) (E : HardnessPredictionEvidence C) :
    HardnessPredictionClosed C := by
  exact And.intro E.coolingRateClosed
    (And.intro E.grainSizeClosed
      (And.intro E.hardnessValueClosed
        (And.intro E.jominyCurveClosed
          (And.intro E.hardenabilityFactorClosed E.predictiveModelClosed))))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse