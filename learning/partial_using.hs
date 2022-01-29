inc n = n + 1
double n = n * 2
square n = n^2

ifEven func = (\x -> if even x then func x else x)

ifEvenInc = ifEven inc
ifEvenDouble = ifEven double
ifEvenSquare = ifEven square


testSum x y = x + y
binaryPartialApplication binaryFunc x = (\y -> binaryFunc x y)

inc100 = binaryPartialApplication testSum 100
