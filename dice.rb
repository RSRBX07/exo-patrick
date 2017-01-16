class Dice
    #écrire une méthode qui retourne le tirage d'un dé
    def roll cheated=false
        cheated ? cheated : {1=>'un',
                            2=>'deux',
                            3=>'trois',
                            4=>'quatre',
                            5=>'cinq',
                            6=>'six'}
                            .to_a.shuffle[0][1]
    end
end


#afficher le résultat d'un tirage de dé à 6 faces'
dice = Dice.new
puts dice.roll "trois"
puts dice.roll
