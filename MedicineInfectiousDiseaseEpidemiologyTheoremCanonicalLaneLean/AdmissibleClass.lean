import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean

structure MedicineAdmittedObject where
  pathogen : Type
  hostPopulation : Type
  transmissionModel : Prop
  infectionDynamics : Prop
  publicHealthIntervention : Prop
  conclusion : transmissionModel ∧ infectionDynamics ∧ publicHealthIntervention

structure AdmissibleClass where
  object : MedicineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.transmissionModel ∧ A.object.infectionDynamics ∧ A.object.publicHealthIntervention) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse