/-!
# Source Dependencies — Erdős-Gyárfás Conjecture

Records source-level dependencies carried from the paired canonical-lane
package. These are structural — they record what the source package depends
on, not the Lean build dependencies.
-/

namespace HautevilleHouse
namespace ErdosGyarfasConjectureCanonicalLaneLean

structure DependencyEntry where
  name : String
  source : String

def sourceDependencies : List DependencyEntry := [
  { name := "erdos-gyarfas-conjecture", source := "https://github.com/HautevilleHouse/erdos-gyarfas-conjecture" }
]

end ErdosGyarfasConjectureCanonicalLaneLean
end HautevilleHouse
