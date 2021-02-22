doubleMe :: Num a => a -> a
doubleMe x = x + x

doubleUs :: Num a => a -> a -> a
doubleUs x y = x * 2 + y * 2

doubleSmallNumber :: (Ord a, Num a) => a -> a
doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

boomBangs :: Integral a => [a] -> [[Char]]
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

rightTriangles :: (Num a, Enum a, Eq a) => [(a, a, a)]
rightTriangles =
  [ (a, b, c)
    | c <- [1 .. 10],
      b <- [1 .. c],
      a <- [1 .. b],
      a ^ 2 + b ^ 2 == c ^ 2,
      a + b + c == 24
  ]
