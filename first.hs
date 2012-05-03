triangles permeter = [ (a,b,c) | c <- [1..permeter],
                                 b <-[1..permeter],
                                 a <- [1..permeter],
                                 a + b + c <= permeter,
                                 a^2 + b^2 == c^2 ]

percentError :: Float -> Float -> Float
percentError test actual =  (max test actual - min test actual) / actual

minRange :: Float -> Float -> Float
minRange maxError actualValue = actualValue - (actualValue * maxError)
maxRange :: Float -> Float -> Float
maxRange maxError actualValue = actualValue + (actualValue * maxError)

errorRange :: [a] -> Float -> Float
errorRange maxError actualValue = [(minRange maxError actualValue)..(maxRange maxError actualValue)]
