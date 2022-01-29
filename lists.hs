repeat n = cycle [n]

subseq start end list = let toCut = length list - end 
                        in reverse(drop toCut (reverse(drop start list)))


inFirstHalf n list = elem n (take (length list `div` 2) list)