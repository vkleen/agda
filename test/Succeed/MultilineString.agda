module _ where

open import Common.Prelude
open import Common.String

foo : String
foo = """
  foo
"""

open import Common.Equality

thm : foo ≡ "  foo\n"
thm = refl
