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
> factI :: Integer -> Integer
> factI n
>    | n < 0     = error "neg x"
>    | n == 0    = 1
>    | otherwise = n * factI (n - 1)
> factE :: Integer -> Integer
> factE n
>    | n < 0     = error "neg x"
>    | n == 0    = 1
>    | otherwise = n * factE n - 1

Tuple Data Type

> prodT (a,b,c) = a * b * c

Curried Functions

> prodC a b c = a * b * c
> prodCx :: Num a => a -> (a -> (a->a))
> prodCx a b c = a * b * c
> prodC1 = prodC 1
> prodC2 = prodC1 2
> prodC3 = prodC2 3
> prodC12 = prodC 1 2