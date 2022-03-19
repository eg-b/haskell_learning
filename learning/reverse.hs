myList  [] = []
myList  xs = last xs : myList (init xs)