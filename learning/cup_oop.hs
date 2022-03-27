cup ml = \_ -> ml

aCup = cup 180
coffeeCup = cup 500

getMl aCup = aCup (\ml -> ml)
  
drink aCup mlDrunk = cup (ml - mlDrank)
  where ml = getMl aCup
     