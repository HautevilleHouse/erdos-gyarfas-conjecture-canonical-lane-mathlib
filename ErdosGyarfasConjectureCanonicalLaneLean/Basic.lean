/-!
# erdos-gyarfas-conjecture Lean migration boundary

This module records the source repository boundary and canonical-lane data
structures for the Lean migration. The source package translation lives in
`erdos_gyarfas_conjecture/SourcePackage.lean`.

This module records the source boundary and does not assert source-conjecture
closure.
-/

namespace HautevilleHouse
namespace ErdosGyarfasConjectureCanonicalLaneLean

def sourceRepository : String := "erdos-gyarfas-conjecture"
def sourceUrl : String := "https://github.com/HautevilleHouse/erdos-gyarfas-conjecture"
def sourceDescription : String := "Canonical-lane closure package for the Erdős-Gyárfás Conjecture: admissible-class formulation, projection gates, and carried remainder."
def sourceClassification : String := "abstract_math_theorem_repo"
def sourceTopics : List String := ["erdos-gyarfas-conjecture", "canonical-lane", "admissible-class", "mathematical-proof", "reproducibility"]

structure AdmissibleObject where
  sourceKey : String
  route : String
deriving Repr, DecidableEq

structure LocalCertificate where
  object : AdmissibleObject
  gate : String
  evidence : String
deriving Repr, DecidableEq

structure CarriedRemainder where
  label : String
  reason : String
deriving Repr, DecidableEq

structure SourceTheoremBoundary where
  sourceKey : String
  claimBoundary : String
  formalizationStatus : String
deriving Repr, DecidableEq

def sourceTheoremBoundary : SourceTheoremBoundary := {
  sourceKey := sourceRepository,
  claimBoundary := "source package translated to Lean data and source formula models recorded; source-conjecture closure remains outside this Lean boundary",
  formalizationStatus := "SOURCE_DERIVED_FORMALIZATION_LAYER"
}

def canonicalLaneBoundary : String :=
  "Use the source package translation and formalization layer as data; replace boundaries with Mathlib-backed statements before any proof claim."

end ErdosGyarfasConjectureCanonicalLaneLean
end HautevilleHouse
