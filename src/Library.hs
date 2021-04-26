module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero


--PUNTO 1
{-
poderDeGolpe:: Number -> Number
poderDeGolpe horas = 15 * horas

fortalezaDelObjetivo:: String -> Number
fortalezaDelObjetivo unObjetivo =  2 * cantLetrasNombre unObjetivo

cantLetrasNombre:: String -> Number
cantLetrasNombre nombre = length nombre
-}

poderDeGolpe = (15*)
fortalezaDelObjetivo= (2*).length

presionDeGolpe :: Number -> String -> Number
presionDeGolpe horas unObjetivo = poderDeGolpe horas/ fortalezaDelObjetivo unObjetivo


-- PUNTO 2

{-
gomuGomu:: String -> Number
gomuGomu unObjetivo = presionDeGolpe 180 unObjetivo

golpesNormales :: String -> Number
golpesNormales  unObjetivo= presionDeGolpe 240  unObjetivo
-}

gomuGomu  = presionDeGolpe 180 

golpesNormales  = presionDeGolpe 240  

--PUNTO 3
 --Entiendo que no es posible usar aplicacion parcial
 
objetivoDificil :: String -> Bool
objetivoDificil unObjetivo = gomuGomu unObjetivo < 100


objetivoAccesible :: String -> Bool
objetivoAccesible unObjetivo = golpeNormalFocalizado unObjetivo > 200 && golpeNormalFocalizado unObjetivo < 400

golpeNormalFocalizado :: String -> Number
--golpeNormalFocalizado unObjetivo= golpesNormales (focaliza unObjetivo) //podria usar composicion
golpeNormalFocalizado = golpesNormales.focaliza

focaliza :: String -> String
focaliza unObjetivo = take 7 unObjetivo