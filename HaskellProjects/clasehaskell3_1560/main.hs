-- Función pura
cuadrado :: Num a => a -> a 
cuadrado x = x * x

-- Función compuesta
sumaDeCuadrados :: Num a => a -> a -> a
sumaDeCuadrados x y = (cuadrado x) + (cuadrado y)

-- Función pura y compuesta
cuadradoAntecesorMasSucesor :: Num a => a -> a
cuadradoAntecesorMasSucesor x = sumaDeCuadrados (x-1) (x+1)

-- Coincidencia de patrones (Pattern matching)
numeroDeLaSuerte :: Int -> String
numeroDeLaSuerte 7 = "Adivinaste el num. de la suerte!"
numeroDeLaSuerte 5 = "Este es otro num. de la suerte!"
numeroDeLaSuerte x = "Sigue intentando..."

esPar :: Int -> String
esPar 0 = "El valor ingresado es cero (0)"
esPar x = 
    -- Estructura condicional
    if x `mod` 2 == 0 -- Función "mod" escrita de forma infija.
        then "El valor ingresado es par"
    else "El valor ingresado es impar"

-- Función recursiva
crearLista :: Int -> [Int] -> [Int]
crearLista x y =
    if x == 0
        then y
    else
        crearLista (x-1) ((x-1):y)



-- Programa principal
main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    putStrLn("a = " ++ show(a))
    putStrLn("b = " ++ show(b))
    putStrLn("c = " ++ show(c))
    let num = b
    putStrLn("cuadrado " ++ show(num) ++ " = " ++ show(cuadrado num))
    putStrLn("sumaDeCuadrados " ++ show(a) ++ " " ++ show(b) ++ " = " ++ show(sumaDeCuadrados a b))
    putStrLn("cuadradoAntecesorMasSucesor " ++ show(num) ++ " = " ++ show(cuadradoAntecesorMasSucesor num))
    putStrLn("numeroDeLaSuerte " ++ show(num) ++ " = " ++ show(numeroDeLaSuerte num))
    putStrLn("esPar " ++ show(num) ++ " = " ++ show(esPar num))
    putStrLn("crearLista " ++ show(num) ++ " [] = " ++ show(crearLista num []))