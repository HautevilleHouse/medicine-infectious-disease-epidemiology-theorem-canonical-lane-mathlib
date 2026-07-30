import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  susceptible : Prop
  infected : Prop
  recovered : Prop
  transmissionRate : Prop
  recoveryRate : Prop
  basicReproductiveNumber : Prop

structure CompartmentModelEvidence (M : CompartmentModelPackage) where
  susceptibleClosed : M.susceptible
  infectedClosed : M.infected
  recoveredClosed : M.recovered
  transmissionRateClosed : M.transmissionRate
  recoveryRateClosed : M.recoveryRate
  basicReproductiveNumberClosed : M.basicReproductiveNumber

def CompartmentModelClosed (M : CompartmentModelPackage) : Prop :=
  M.susceptible ∧ M.infected ∧ M.recovered ∧ M.transmissionRate ∧ M.recoveryRate ∧ M.basicReproductiveNumber

theorem compartment_model_closed_from_evidence (M : CompartmentModelPackage) (E : CompartmentModelEvidence M) :
    CompartmentModelClosed M := by
  exact And.intro E.susceptibleClosed
    (And.intro E.infectedClosed
      (And.intro E.recoveredClosed
        (And.intro E.transmissionRateClosed
          (And.intro E.recoveryRateClosed E.basicReproductiveNumberClosed))))

end MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse