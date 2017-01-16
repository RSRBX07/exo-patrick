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
# choisir plusieurs grilles
(1..100).each do |n|
    puts "Jeu:#{loto.create_lotto_board Loto.random_board}"
end

#puts "Jeu:#{loto.create_lotto_board.join ','}"
#puts "Jeu:#{loto.create_lotto_board.join ','}"
#puts "Jeu:#{loto.create_lotto_board.join ','}"
# faire 1000 tirages tant qu'on ne gagne pas'
(1..1000).each do |n|
    puts "Tirage #{n} : #{loto.do_lotto_draw.join ','}"
    break if loto.win?
end
puts loto.win? ? "Loto : numéro(s) gagnant(s) #{loto.lotto_winning_boards}" : "Loto perdu"

