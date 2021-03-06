robot (name, attack, hp) = \msg -> msg (name, attack, hp)

name (n, _, _) = n
attack (_, a, _) = a
hp (_, _, hp) = hp

getName aRobot = aRobot name
getAttack aRobot = aRobot attack
getHP aRobot = aRobot hp

setName aRobot newName = aRobot (\(n, a, h) ->
                                   robot (newName, a, h))
setAttack aRobot newAttack = aRobot (\(n, a, h) ->
                                      robot (n, newAttack, h))

setHP aRobot newHP = aRobot (\(n, a, h) -> robot (n, a, newHP))

printRobot aRobot = aRobot (\(n, a, h) ->
                              n ++
                              " attack:" ++ (show a) ++ 
                              " health" ++ (show h))

killerRobot = robot ("killer", 25, 200)