import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

structure JohnsonMehlAvramiPackage where
  nucleationRate : Prop
  growthRate : Prop
  transformedFraction : Prop
  avramiExponent : Prop
  isothermalCondition : Prop

structure JohnsonMehlAvramiEvidence (J : JohnsonMehlAvramiPackage) where
  nucleationRateClosed : J.nucleationRate
  growthRateClosed : J.growthRate
  transformedFractionClosed : J.transformedFraction
  avramiExponentClosed : J.avramiExponent
  isothermalConditionClosed : J.isothermalCondition

def JohnsonMehlAvramiClosed (J : JohnsonMehlAvramiPackage) : Prop :=
  J.nucleationRate ∧ J.growthRate ∧ J.transformedFraction ∧ J.avramiExponent ∧ J.isothermalCondition

theorem johnson_mehl_avrami_closed_from_evidence (J : JohnsonMehlAvramiPackage) (E : JohnsonMehlAvramiEvidence J) : JohnsonMehlAvramiClosed J := by
  exact And.intro E.nucleationRateClosed (And.intro E.growthRateClosed (And.intro E.transformedFractionClosed (And.intro E.avramiExponentClosed E.isothermalConditionClosed)))

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse