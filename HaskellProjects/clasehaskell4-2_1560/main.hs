-- Importar bibliotecas de datos
import System.IO
import Data.List (isInfixOf)

main :: IO()
main = do
    -- Abrir el archivo en modo lectura
    repo <- openFile "datos.txt" ReadMode
    
    -- Extraer todas las líneas del archivo
    contenido <- hGetContents repo
    
    -- Dividir el contenido en líneas, se crea un arreglo
    -- de cadenas de caracteres
    let lineasDelArchivo = lines contenido
    
    -- Filtrar las líneas que contienen la palabra "Edad"
    let lineasFiltradas = filter (isInfixOf "Edad") lineasDelArchivo
    
    -- Imprimir las línea filtradas
    putStrLn("Líneas que contienen la palabra 'Edad':")
    mapM_ putStrLn lineasFiltradas
    
    -- Cerrar el archivo 
    hClose repo
    
    -- Abrir un archivo en modo Escritura
    repo2 <- openFile "datos2.txt" WriteMode
    
    -- Escribir las líneas filtradas en el nuevo archivo
    mapM_ (hPutStrLn repo2) lineasFiltradas
    
    hClose repo2
    
    
    
    