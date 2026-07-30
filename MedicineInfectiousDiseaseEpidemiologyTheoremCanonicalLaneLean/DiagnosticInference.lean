import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean

structure DiagnosticTest where
  sensitivity : ℝ
  specificity : ℝ
  prevalence : ℝ
  positivePredictiveValue : ℝ
  negativePredictiveValue : ℝ

def DiagnosticInferenceClosed (D : DiagnosticTest) : Prop :=
  D.sensitivity > 0 ∧ D.sensitivity ≤ 1 ∧ D.specificity > 0 ∧ D.specificity ≤ 1 ∧
  D.prevalence > 0 ∧ D.prevalence < 1 ∧
  D.positivePredictiveValue ≥ 0 ∧ D.positivePredictiveValue ≤ 1 ∧
  D.negativePredictiveValue ≥ 0 ∧ D.negativePredictiveValue ≤ 1

theorem diagnostic_inference_closed (D : DiagnosticTest) (h : DiagnosticInferenceClosed D) : DiagnosticInferenceClosed D :=
  h

end MedicineInfectiousDiseaseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse