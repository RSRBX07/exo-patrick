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
(1..2).each do |n|
    puts "Jeu:#{loto.create_lotto_board Loto.random_board}"
end

#puts "Jeu:#{loto.create_lotto_board.join ','}"
#puts "Jeu:#{loto.create_lotto_board.join ','}"
#puts "Jeu:#{loto.create_lotto_board.join ','}"
# faire 1000 tirages tant qu'on ne gagne pas'
(1..2).each do |n|
    puts "Tirage #{n} : #{loto.do_lotto_draw.join ','}"
    break if loto.win?
end
puts "#{loto.boards_count} grilles jouées"
puts "Résultat du loto : #{loto.lotto_draw}"
puts loto.win? ? "Loto : numéro(s) gagnant(s) #{loto.lotto_winning_boards}" : "Loto perdu"


puts "Le tirage a déjà eu lieu" if loto.played?

if loto.create_lotto_board(Loto.random_board) == false
    puts "Impossible d'ajouter une grille : le tirage a déjà eu lieu"
end
