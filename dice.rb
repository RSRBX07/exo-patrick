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

