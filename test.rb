require './dice.rb'
require './french_number.rb'
require './loto.rb'

#afficher le résultat d'un tirage de dé à 6 faces'
dice = Dice.new
puts dice.roll "trois"
puts dice.roll

puts 1234.spell_to_french


#grille jouée
puts "Grille #{lotto_board.join ','}"
#tirage du loto
lotto_draw = (1..49).to_a.shuffle.take(5).sort
puts "Tirage #{lotto_draw.join ','}"
#numéros gagnants
winning_number = lotto_draw & lotto_board
(winning_number.length==0) ? (puts "Aucun numéro gagnant") : (puts "Numéro(s) gagnant(s) #{winning_number.join ','}")
