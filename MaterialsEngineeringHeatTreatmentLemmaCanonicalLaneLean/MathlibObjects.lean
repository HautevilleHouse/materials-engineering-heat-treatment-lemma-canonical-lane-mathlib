import MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HeatTreatmentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HeatTreatmentAdmittedObject where
  space : HeatTreatmentSpace
  thermalCycleApplied : Prop
  microStructureObtained : Prop
  propertyImproved : Prop
  conclusion : propertyImproved

structure HeatTreatmentEndgameState where
  object : HeatTreatmentAdmittedObject

def HeatTreatmentWitnessClosed (O : HeatTreatmentAdmittedObject) : Prop :=
  O.propertyImproved

end MaterialsEngineeringHeatTreatmentLemmaCanonicalLaneLean
end HautevilleHouse