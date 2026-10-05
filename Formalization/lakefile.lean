import Lake
open Lake DSL

package «Formalization»

require "leanprover-community" / "mathlib" @ git "v4.26.0-rc2"

@[default_target]
lean_lib Formalization
