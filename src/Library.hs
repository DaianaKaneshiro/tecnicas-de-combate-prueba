module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero


--punto 1
poderDeGolpe:: Number -> Number
poderDeGolpe horas = 15 * horas

fortalezaDelObjetivo:: String -> Number
fortalezaDelObjetivo unObjetivo =  2 * cantLetrasNombre unObjetivo

cantLetrasNombre:: String -> Number
cantLetrasNombre nombre = length nombre

presionDeGolpe :: Number -> String -> Number
presionDeGolpe horas unObjetivo = poderDeGolpe horas/ fortalezaDelObjetivo unObjetivo


-- punto 2

gomuGomu:: String -> Number
gomuGomu unObjetivo = presionDeGolpe 180 unObjetivo

golpesNormales :: String -> Number
golpesNormales  unObjetivo= presionDeGolpe 240  unObjetivo

--punto 3

objetivoDificil :: String -> Bool
objetivoDificil unObjetivo = gomuGomu unObjetivo < 100

objetivoAccesible :: String -> Bool
objetivoAccesible unObjetivo = golpeNormalFocalizado unObjetivo > 200 && golpeNormalFocalizado unObjetivo < 400

golpeNormalFocalizado :: String -> Number
--golpeNormalFocalizado unObjetivo= golpesNormales (focaliza unObjetivo) //podria usar composicion
golpeNormalFocalizado = golpesNormales.focaliza

focaliza :: String -> String
focaliza unObjetivo = take 7 unObjetivo