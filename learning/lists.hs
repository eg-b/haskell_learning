repeat :: a -> [a]
repeat n = cycle [n]


subseq :: Int -> Int -> [a] -> [a]
subseq start end list = let toCut = length list - end 
                        in reverse(drop toCut (reverse(drop start list)))  -- works but looks horrible


inFirstHalf :: Eq a => a -> [a] -> Bool
inFirstHalf n list = elem n (take (length list `div` 2) list)


myTail :: [a] -> [a]
myTail (_:xs) = xs
myTail [] = []

myGCD_ a b = if remainder == 0
            then b
            else myGCD_ b remainder
    where remainder = a `mod` b


myGCD a 0 = a
myGCD a b = myGCD b (a `mod` b)


myDrop 0 aList = aList
myDrop _ [] = []
myDrop n aList = myDrop (n - 1) (tail aList)