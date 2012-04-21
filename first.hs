name = "Dan"
myAge = 23
current_year = 2012

birth_year cur age = cur - age

triangles permeter = [ (a,b,c) | c <- [1..permeter],
                                 b <-[1..permeter],
                                 a <- [1..permeter],
                                 a + b + c <= permeter,
                                 a^2 + b^2 == c^2 ]
