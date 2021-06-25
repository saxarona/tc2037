data Set  = Set [Int] deriving Show

unique :: [Int] -> [Int]
unique [] = []
unique (x:xs) = x : unique (filter (/= x) xs)

-- [1, 2, 2, 3, 1]

set :: [Int] -> Set
set lst = Set (unique lst)

union :: Set -> Set -> Set
union (Set x) (Set y) = set (x ++ y)

intersection :: Set -> Set -> Set
intersection (Set x) (Set y) = set ([zi | zi <- x, elem zi y])