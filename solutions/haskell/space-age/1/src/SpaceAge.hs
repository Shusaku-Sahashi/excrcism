module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn Earth second = second / 31557600
ageOn Mercury second = (ageOn Earth second) / 0.2408467
ageOn Venus second = (ageOn Earth second) / 0.61519726
ageOn Mars second = (ageOn Earth second) / 1.8808158
ageOn Jupiter second = (ageOn Earth second) / 11.862615
ageOn Saturn second = (ageOn Earth second) / 29.447498
ageOn Uranus second = (ageOn Earth second) / 84.016846
ageOn Neptune second = (ageOn Earth second) / 164.79132