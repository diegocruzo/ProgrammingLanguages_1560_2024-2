-- Función factorial
factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x-1)

crearListaOpt :: Int -> [Int] -> [Int]
crearListaOpt x y =
    if x == 0
        then y
    else
        crearListaOpt z (z:y)
        where z = x - 1

-- Función anónima (abstracción o forma lambda)
filtrarParesLista :: [Int] -> [Int]
filtrarParesLista = filter (\x -> x `mod` 2 == 0) -- Entre paréntesis se encuentra la forma lambda

duplicarLista :: [Int] -> [Int]
duplicarLista = map (*2)

incrementarLista :: [Int] -> [Int]
incrementarLista = map (+1)

-- Operador de composición (.)
combinar :: [Int] -> [Int]
combinar = incrementarLista . duplicarLista . filtrarParesLista

-- Función que recibe un parámetro y otorga más de un parámetro en la salida
listaUnValor x = x []

generarLista = listaUnValor . crearListaOpt

numPrimo2 :: Int -> Int -> Bool
numPrimo2 2 1 = True
numPrimo2 x y =
    if y <= 0 
        then False
    else if x `mod` y == 0
        then False
    else if y <= 2 
        then True
    else
        numPrimo x (y - 1)
        
-- Protectores o guardias
numPrimo :: Int -> Int -> Bool
numPrimo 2 1 = True
numPrimo x y
    | y <= 0 = False
    | x `mod` y == 0 = False
    | y <= 2 = True
    | otherwise = numPrimo x (y - 1)


lista = [1..7]




main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    putStrLn("a = " ++ show(a))
    putStrLn("b = " ++ show(b))
    putStrLn("b = " ++ show(c))
    let num = a
    putStrLn("factorial " ++ show(num) ++ " = " ++ show(factorial num))
    putStrLn("crearListaOpt " ++ show(num) ++ " [] = " ++ show(crearListaOpt num []))
    putStrLn("filtrarParesLista " ++ show(lista) ++ " = " ++ show(filtrarParesLista lista))
    putStrLn("duplicarLista " ++ show(lista) ++ " = " ++ show(duplicarLista lista))
    putStrLn("incrementarLista " ++ show(lista) ++ " = " ++ show(incrementarLista lista))
    putStrLn("combinar " ++ show(lista) ++ " = " ++ show(combinar lista))
    putStrLn("generarLista " ++ show(num) ++ " = " ++ show(generarLista num))
    putStrLn("numPrimo " ++ show(num) ++ " = " ++ show(numPrimo num (num-1)))
    
    
    
    