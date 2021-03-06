
module Agda.TypeChecking.Rules.Application where

import Agda.Syntax.Common (NamedArg, ProjOrigin)
import qualified Agda.Syntax.Abstract as A
import Agda.Syntax.Internal
import Agda.Syntax.Position
import Agda.TypeChecking.Monad.Base
import Agda.Utils.NonemptyList

checkArguments :: ExpandHidden -> Range -> [NamedArg A.Expr] -> Type -> Type ->
                  (Elims -> Type -> CheckedTarget -> TCM Term) -> TCM Term

checkArguments_ :: ExpandHidden -> Range -> [NamedArg A.Expr] -> Telescope ->
                   TCM (Elims, Telescope)

checkApplication :: Comparison -> A.Expr -> A.Args -> A.Expr -> Type -> TCM Term

inferApplication :: ExpandHidden -> A.Expr -> A.Args -> A.Expr -> TCM (Term, Type)

checkProjAppToKnownPrincipalArg  :: Comparison -> A.Expr -> ProjOrigin -> NonemptyList QName -> A.Args -> Type -> Int -> Term -> Type -> TCM Term
