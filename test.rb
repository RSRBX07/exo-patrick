require './dice.rb'
require './french_number.rb'
require './loto.rb'

#afficher le résultat d'un tirage de dé à 6 faces'
dice = Dice.new
puts dice.roll "trois"
puts dice.roll

number = rand(999999999)
puts "number:#{number} soit #{number.spell_to_french}"

# loto
loto = Loto.new
# choisir une grille
puts "Jeu:#{loto.create_lotto_board.join ','}"
# faire un tirage
(1..1000).each { |n|
    puts "Tirage #{n} : #{loto.do_lotto_draw.join ','}"
    if loto.win?
        break
    end
}
if loto.win?
    puts "Loto : numéro(s) gagnant(s) #{loto.return_winning_number}"
else
    puts "Loto perdu"
end
