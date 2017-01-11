#écrire une méthode qui retourne le tirage d'un dé
def roll (cheatted=false)
    if cheatted
        cheatted
    else
        [1,2,3,4,5,6].shuffle[0]
    end
end

#afficher le résultat d'un tirage de dé à 6 faces'
print roll 2
print roll
