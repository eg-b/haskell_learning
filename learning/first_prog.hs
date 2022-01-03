main = do
    putStrLn "Who's receiver of this letter?"
    recipient <- getLine
    putStrLn "Book name:"
    title <- getLine
    putStrLn "Who's author of this letter?"
    author <- getLine
    putStrLn (createEmail recipient title author)

toPart recipient = "Dear " ++ recipient ++ "!\n"

bodyPart bookTitle = "Thank you for buying \"" ++ bookTitle ++ "\"!\n"

fromPart author = "Sincerely, \n" ++ author

createEmail recipient bookTitle author = toPart recipient ++
                                         bodyPart bookTitle ++
                                         fromPart author