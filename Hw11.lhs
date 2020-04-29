> module Hw11
>    where

Define factorial. Let Haskell infer the type of factorial.

> factorial n = if n == 0 then 1 else n * factorial (n - 1)
> fact1 :: Int -> Int
> fact1 n = if n == 0 then 1 else n * fact1 (n - 1)
> fact2 :: Integer -> Integer
> fact2 n = if n == 0 then 1 else n * fact2 (n - 1)
> factP :: Integer -> Integer
> factP 0 = 1
> factP n = n * factP(n -1)
> factG x
>    | x < 0     = error "neg x"
>    | x == 0    = 1
>    | otherwise = x * factG(x-1)