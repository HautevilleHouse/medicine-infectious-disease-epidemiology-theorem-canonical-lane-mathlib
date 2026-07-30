import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticPackage where
  drugConcentration : Type u
  absorptionRate : Type v
  eliminationRate : Type w
  administrationSchedule : Prop
  doseResponseLinear : Prop
  firstOrderKinetics : Prop
  steadyStateReachable : Prop

structure PharmacokineticEvidence (P : PharmacokineticPackage) where
  administrationScheduleClosed : P.administrationSchedule
  doseResponseLinearClosed : P.doseResponseLinear
  firstOrderKineticsClosed : P.firstOrderKinetics
  steadyStateReachableClosed : P.steadyStateReachable

def PharmacokineticClosed (P : PharmacokineticPackage) : Prop :=
  P.administrationSchedule ∧ P.doseResponseLinear ∧
  P.firstOrderKinetics ∧ P.steadyStateReachable

theorem pharmacokinetic_closed_from_evidence
    (P : PharmacokineticPackage) (E : PharmacokineticEvidence P) :
    PharmacokineticClosed P := by
  exact And.intro E.administrationScheduleClosed
    (And.intro E.doseResponseLinearClosed
      (And.intro E.firstOrderKineticsClosed E.steadyStateReachableClosed))

end MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
