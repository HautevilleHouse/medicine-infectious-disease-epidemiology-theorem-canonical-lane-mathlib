import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean

structure BasicReproductionNumberPackage where
  infectionRate : Type u
  recoveryRate : Type v
  susceptibleFraction : Real
  r0Threshold : Real
  r0Finite : Prop
  r0Dimensionless : Prop
  r0DeterminesThreshold : Prop

structure BasicReproductionNumberEvidence (R : BasicReproductionNumberPackage) where
  r0FiniteClosed : R.r0Finite
  r0DimensionlessClosed : R.r0Dimensionless
  r0DeterminesThresholdClosed : R.r0DeterminesThreshold

def BasicReproductionNumberClosed (R : BasicReproductionNumberPackage) : Prop :=
  R.r0Finite ∧ R.r0Dimensionless ∧ R.r0DeterminesThreshold

theorem basic_reproduction_number_closed_from_evidence
    (R : BasicReproductionNumberPackage) (E : BasicReproductionNumberEvidence R) :
    BasicReproductionNumberClosed R := by
  exact And.intro E.r0FiniteClosed
    (And.intro E.r0DimensionlessClosed E.r0DeterminesThresholdClosed)

end MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
