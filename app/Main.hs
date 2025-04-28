module Main () where

    data Personaje= unPersonaje{
        nombre :: String
        poderBasico :: String
        superPoderActivo :: Bool
        cantidadDeVida :: Int
        }

esPoder :: 

bolaEspinosa :: Personaje -> Personaje
bolaEspinosa (_ , _ , _ , _ , vida)
    |    vida >1000 = vida -1000
    |  otherwise = vida - vida


lluviaDeTuercas :: Personaje -> Personaje
lluviaDeTuercas (_ , _ , _ , _ , vida)
  | unPersonaje = vida + 800
  | unPersonaje = div vida 2
  | otherwise unPersonaje = unPersonaje
 

granadaDeEspinas :: Personaje -> Int -> Personaje
granadaDeEspinas (nombre , _ , _ , superActiva , vida) radioDeExplosion 
  | radioDeExplosion > 3 = (nombre )