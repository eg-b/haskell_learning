import Data.List

names = [("Ien", "Curtis"),
         ("Bernard", "Samner"),
         ("Piter", "Hook"),
         ("Steven", "Morris")]


compareLastNames name1 name2 = let lastName1 = snd name1
                                   lastName2 = snd name2
                                   firstName1 = fst name1
                                   firstName2 = fst name2
                               in
                                if lastName1 == lastName2
                                  then compare firstName1 firstName2
                                  else compare lastName1 lastName2
         

sfOffice name =
   if lastName < "L"
     then nameText ++
          " - 1234, San Francisco, California, 94111"
     else nameText ++
          " - 1010, San Francisco, California, 94109"
  where lastName = snd name
        nameText = (fst name) ++ " " ++ lastName

nyOffice name = nameText ++
           ": 789, New York, New York, 10013"
  where nameText = snd name

renoOffice name = nameText ++ " - 456, Reno, Nevada, 89523"
  where nameText = snd name

wdcOffice name = nameText ++ " - 202, Washington, Columbia, 20098"
  where lastName = snd name
        firstName = fst name
        nameText = "dear " ++ firstName ++ " " ++ lastName
  
      
getLocationFunction location =
  case location of
    "ny" -> nyOffice
    "sf" -> sfOffice
    "reno" -> renoOffice
    "wdc" -> wdcOffice
    _ -> (\name ->
          (fst name) ++ " " ++ (snd name))

addressLetter name location = locationFunction name
  where locationFunction = getLocationFunction location