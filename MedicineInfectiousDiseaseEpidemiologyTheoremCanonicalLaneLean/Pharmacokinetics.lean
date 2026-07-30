import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticsPackage where
  drugConcentration : Prop
  absorptionRate : Prop
  eliminationRate : Prop
  volumeOfDistribution : Prop
  halfLife : Prop
  therapeuticWindow : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  drugConcentrationClosed : P.drugConcentration
  absorptionRateClosed : P.absorptionRate
  eliminationRateClosed : P.eliminationRate
  volumeOfDistributionClosed : P.volumeOfDistribution
  halfLifeClosed : P.halfLife
  therapeuticWindowClosed : P.therapeuticWindow

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.drugConcentration ∧ P.absorptionRate ∧ P.eliminationRate ∧ P.volumeOfDistribution ∧ P.halfLife ∧ P.therapeuticWindow

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage) (E : PharmacokineticsEvidence P) :
    PharmacokineticsClosed P := by
  exact And.intro E.drugConcentrationClosed
    (And.intro E.absorptionRateClosed
      (And.intro E.eliminationRateClosed
        (And.intro E.volumeOfDistributionClosed
          (And.intro E.halfLifeClosed E.therapeuticWindowClosed))))

end MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse