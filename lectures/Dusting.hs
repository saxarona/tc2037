module Dusting where

myinvert :: [Int] -> [Int]
myinvert [] = []
myinvert (x:y) = (myinvert y) ++ [x]


listor :: [Int] -> [Int] -> [Int]
listor [] [] = []
listor (1:y) (_:v) = 1 : listor y v
listor (_:y) (1:v) = 1 : listor y v
listor (0:y) (0:v) = 0 : listor y v

multiples :: [Int] -> Int -> [Int]
multiples [] _ = []
multiples (x:xs) y = if (rem y x) == 0
    then x : multiples xs y
    else multiples xs y

differencesAux :: [Int] -> Int -> [Int]
differencesAux [] _ = []
differencesAux [x] y = [abs (x - y)]
differencesAux (x1:x2:xs) y = abs (x1 - x2) : differencesAux (x2:xs) y

differences :: [Int] -> [Int]
differences lst = differencesAux lst (head lst)

tobinarystring :: Int -> [Char]
tobinarystring 0 = "0"
tobinarystring 1 = "1"
tobinarystring x = if x < 0
    then error "undefined for negative numbers"
    else tobinarystring (div x 2) ++ show (mod x 2)

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n-2)

evenNumbers :: [Int] -> [Int]
evenNumbers [] = []
evenNumbers (x:xs)
    | (mod x 2) == 0 = x : evenNumbers xs
    | otherwise = evenNumbers xs

rotateMatrix :: [[Int]] -> [[Int]]
rotateMatrix ([]:_) = []
rotateMatrix lst = reverse (map head lst) : rotateMatrix (map tail lst)

inverseRelation :: [(Int, Int)] -> [(Int, Int)]
inverseRelation [] = []
inverseRelation ((x, y):rest) =  (y, x) : inverseRelation rest

