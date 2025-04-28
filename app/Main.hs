module Main () where

    type personaje=(String, String, String, Bool, Int)

bolaEspinosa :: personaje -> personaje
 bolaEspinosa (_ , _ , _ , _ , vida)
    |    vida >1000 = vida -1000
    |  otherwise = vida - vida


