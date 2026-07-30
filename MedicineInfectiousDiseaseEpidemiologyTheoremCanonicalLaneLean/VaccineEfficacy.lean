import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean

structure VaccineEfficacyPackage where
  vaccineEfficacy : Prop
  relativeRiskReduction : Prop
  numberNeededToVaccinate : Prop
  herdImmunityThreshold : Prop
  adverseEventRate : Prop
  seroconversionRate : Prop

structure VaccineEfficacyEvidence (V : VaccineEfficacyPackage) where
  vaccineEfficacyClosed : V.vaccineEfficacy
  relativeRiskReductionClosed : V.relativeRiskReduction
  numberNeededToVaccinateClosed : V.numberNeededToVaccinate
  herdImmunityThresholdClosed : V.herdImmunityThreshold
  adverseEventRateClosed : V.adverseEventRate
  seroconversionRateClosed : V.seroconversionRate

def VaccineEfficacyClosed (V : VaccineEfficacyPackage) : Prop :=
  V.vaccineEfficacy ∧ V.relativeRiskReduction ∧ V.numberNeededToVaccinate ∧ V.herdImmunityThreshold ∧ V.adverseEventRate ∧ V.seroconversionRate

theorem vaccine_efficacy_closed_from_evidence (V : VaccineEfficacyPackage) (E : VaccineEfficacyEvidence V) :
    VaccineEfficacyClosed V := by
  exact And.intro E.vaccineEfficacyClosed
    (And.intro E.relativeRiskReductionClosed
      (And.intro E.numberNeededToVaccinateClosed
        (And.intro E.herdImmunityThresholdClosed
          (And.intro E.adverseEventRateClosed E.seroconversionRateClosed))))

end MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse