import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModel where
  susceptibleCompartment : Prop
  infectedCompartment : Prop
  removedCompartment : Prop
  transmissionRate : ℝ
  recoveryRate : ℝ
  diseaseFreeEquilibrium : Prop
  basicReproductionNumber : ℝ

def CompartmentModelClosed (M : CompartmentModel) : Prop :=
  M.susceptibleCompartment ∧ M.infectedCompartment ∧ M.removedCompartment ∧
  M.diseaseFreeEquilibrium ∧ M.basicReproductionNumber > 0

theorem compartment_model_closed (M : CompartmentModel) (h : CompartmentModelClosed M) : CompartmentModelClosed M :=
  h

end MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse