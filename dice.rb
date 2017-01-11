#écrire une méthode qui retourne le tirage d'un dé
def roll cheated=false
    if cheated
        cheated
    else
        [1,2,3,4,5,6].shuffle[0]
    end
end

#afficher le résultat d'un tirage de dé à 6 faces'
puts roll 2
puts roll
