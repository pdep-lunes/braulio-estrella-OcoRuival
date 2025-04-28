module Main () where

    type Personaje=(String, String, String, Bool, Int)



bolaEspinosa :: Personaje -> Personaje
 bolaEspinosa (_ , _ , _ , _ , vida)
    |    vida >1000 = vida -1000
    |  otherwise = vida - vida

esAliado :: Personaje -> Bool
esAliado unPersonaje = True

lluviaDeTuercas :: personaje -> personaje
lluviaDeTuercas (_ , _ , _ , _ , vida)
  | esAliado unPersonaje = vida + 800
  | not.esAliado unPersonaje = div vida 2
  | otherwise unPersonaje = unPersonaje

