> module Hw11
>  where

Define factorial. Let Haskell infer the type of factorial.

> factorial n = if n == 0 then 1 else n * factorial (n - 1)