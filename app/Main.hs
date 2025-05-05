module Main () where

    data Personaje= unPersonaje{
        nombre :: String
        poderBasico :: String
        superPoder :: String
        superPoderActivo :: Bool
        cantidadDeVida :: Int
        radioDeAtaque :: Int
        }

data Equipo = unEquipo{
  primerCompanero :: Personaje
  segundoCompanero :: Personaje
  numeroDeEquipo :: Int
}
  
estaEnElMismoEquipo :: Equipo -> Personaje -> Bool
estaEnElMismoEquipo equipo enemigo = (personaje1 equipo == enemigo) || (personaje2 equipo == enemigo)

bolaEspinosa :: Personaje -> Personaje
bolaEspinosa unPersonaje
    |    cantidadDeVida unPersonaje >1000 = unPersonaje{ cantidadDeVida = cantidadDeVida unPersonaje - 1000}
    |  otherwise =  unPersonaje{ cantidadDeVida = cantidadDeVida unPersonaje - cantidadDeVida unPersonaje}



lluviaDeTuercas :: Equipo -> Personaje -> Personaje
lluviaDeTuercas equipo enemigo
  |  estaEnElMismoEquipo enemigo = cantidadDeVida enemigo + 800
  | otherwise = div cantidadDeVida enemigo 2
  
 

granadaDeEspinas :: Personaje -> Personaje -> Int -> Personaje
granadaDeEspinas unPersonaje enemigo radioDeExplosionAtacante
  | radioDeExplosionAtacante > 3  = unPersonaje {nombre = nombre unPersonaje ++ "Espina estuvo aqui"}
  | cantidadDeVida enemigo < 800 = enemigo { cantidadDeVida = 0, superPoderActivo = False}
  | otherwise = bolaEspinosa enemigo

torretaCurativa :: Personaje -> Personaje -> Personaje
torretaCurativa unPersonaje otroPersonaje = otroPersonaje {superPoderActivo = True, cantidadDeVida = cantidadDeVida*2}

atacarConElPoderEspecial :: Personaje -> Personaje -> Personaje
atacarConElPoderEspecial unPersonaje contrincante
  | unPersonaje {superPoderActivo == True} = superPoder 

estaEnLasUltimas :: Personaje -> Bool
estaEnLasUltimas unPersonaje = vida unPersonaje < 800

espina = Personaje "Espina" "Bola de Espinas" "Granada de Espinas" True 4800 5
pamela = Personaje "Pamela" "Lluvia de Tuercas" "Torreta curativa" False 9600 0
  