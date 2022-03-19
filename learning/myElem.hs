myElem value xs = if length (filter (\y -> y == value) xs) > 0
                   then True
                   else False
