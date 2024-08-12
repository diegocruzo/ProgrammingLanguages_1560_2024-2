-- Función cuadrado
cuadrado :: Double -> Double -- Firma o declaración de tipo
cuadrado x = x * x -- Declaración de la función

-- Función promedio
--promedio :: Double -> Double -> Double -> Double
promedio :: Fractional a => a -> a -> a -> a
promedio x y z = (x + y + z) / 3

-- Función sumaMonedas
sumaMonedas :: Double -> Double -> Double -> Double
sumaMonedas x y z = (x * 200) + (y * 500) + (z * 1000)

-- Función ultimaCifra
ultimaCifra :: Int -> Int
ultimaCifra x = rem x 10 

-- Función aproximar
aproximar :: (RealFrac a, Integral b) => a -> a -> a -> b
aproximar x y z = round (promedio x y z)

-- Función principal
main :: IO()
main = do
    -- Obtener un valor desde consola y otorgárselo a la variable "a"
    a <- readLn :: IO Double
    b <- readLn :: IO Double
    c <- readLn :: IO Double
    d <- readLn :: IO Int
    -- Ejecutar la función cuadrado
    putStrLn("a: " ++ show(a))
    putStrLn("b: " ++ show(b))
    putStrLn("c: " ++ show(c))
    putStrLn "Funciones:"
    putStrLn("cuadrado: " ++ show (cuadrado a))
    putStrLn("promedio: " ++ show (promedio a b c))
    putStrLn("sumaMonedas: $" ++ show (sumaMonedas a b c))
    putStrLn("ultimaCifra: " ++ show (ultimaCifra d))
    putStrLn("aproximar: " ++ show (aproximar a b c))