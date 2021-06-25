module Test where

    data Graph = Graph [String] deriving Show

    -- Graph ["ab", "bc", "ab", "cd"]

    deg :: String -> Int
    deg [] = 0
    deg x = (length x) - 1

    degree :: Graph -> [Int]
    degree (Graph edges) = map deg edges

    mode :: [Int] -> (Int, Int)
    mode [] = error "Not defined\n"
    mode [x] = (x, 1)
    mode (x:xs) = let
        first = (x, 1 + (length $ filter (== x) xs))
        rest = mode xs
        in
            if (snd first >= snd rest) then first else rest
    
    data Set = Set [Int] deriving Show

    unique :: [Int] -> [Int]
    unique [] = []
    unique (x:xs) = x : unique (filter (/= x) xs)

    set :: [Int] -> Set
    set [] = (Set [])
    set x = Set (unique x)

    union :: Set -> Set -> Set
    union (Set b) (Set a) = set (b ++ a)

    intersection :: Set -> Set -> Set
    intersection (Set a) (Set b) = set [x | x <- a, elem <- b]

    merge :: [Int] -> [Int] -> [Int]
    merge x [] = x
    merge [] y = y
    merge (x:xs) (y:ys)
        | (x <= y) = x : (merge xs (y:ys))
        | otherwise = y : (merge (x:xs) ys)

    msort :: [Int] -> [Int]
    msort [] = []
    msort [x] = [x]
    msort x = merge (msort l) (msort r) where
        l = take (div (length x) 2) x
        r = drop (div (length x) 2) x

    main = do
        print $ degree (Graph ["ab", "bc", "cd"])
        print $ mode [1, 2, 1, 1, 2, 1, 3]
        print $ union (Set [1, 2, 3]) (Set [2, 3, 4])
        print $ intersection (Set [1, 2, 3]) (Set [2, 3, 4])
        print $ msort [1, 2, 0, -2,  3, 6, 5, 10, -7]