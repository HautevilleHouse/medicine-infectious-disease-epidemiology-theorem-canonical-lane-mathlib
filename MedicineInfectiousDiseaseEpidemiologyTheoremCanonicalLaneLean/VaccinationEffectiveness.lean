import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean

structure VaccinationEffectivenessPackage where
  vaccineEfficacy : Real
  herdImmunityThreshold : Real
  coverageRate : Real
  efficacyMeasured : Prop
  herdImmunityAchievable : Prop
  coverageSufficient : Prop

structure VaccinationEffectivenessEvidence (V : VaccinationEffectivenessPackage) where
  efficacyMeasuredClosed : V.efficacyMeasured
  herdImmunityAchievableClosed : V.herdImmunityAchievable
  coverageSufficientClosed : V.coverageSufficient

def VaccinationEffectivenessClosed (V : VaccinationEffectivenessPackage) : Prop :=
  V.efficacyMeasured ∧ V.herdImmunityAchievable ∧ V.coverageSufficient

theorem vaccination_effectiveness_closed_from_evidence
    (V : VaccinationEffectivenessPackage) (E : VaccinationEffectivenessEvidence V) :
    VaccinationEffectivenessClosed V := by
  exact And.intro E.efficacyMeasuredClosed
    (And.intro E.herdImmunityAchievableClosed E.coverageSufficientClosed)

end MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
