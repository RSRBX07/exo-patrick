require_relative '../lib/loto/loto.rb'

RSpec.describe Loto do
    xit 'input board' do
    end

    it 'get random board' do
        expect(Loto.random_board).not_to be_nil
        expect(Loto.random_board).to be_a Array
        expect(Loto.random_board.size).to equal 5
        expect(Loto.random_board).not_to eql Loto.random_board
    end

    it 'make a draw' do
        loto = Loto.new
        expect(loto).to respond_to :do_lotto_draw
        lotto_draw = loto.do_lotto_draw
        expect(lotto_draw).not_to be_nil
        expect(lotto_draw).to be_a Array
        expect(lotto_draw.size).to equal 5
    end

    it 'create a board with argument' do
        loto = Loto.new
        expect(loto).to respond_to :create_lotto_board
    end
end

#afficher le résultat d'un tirage de dé à 6 faces'
# dice = Dice.new
# puts dice.roll "trois"
# puts dice.roll

# number = rand(999999999)
# puts "number:#{number} soit #{number.spell_to_french}"

# loto
# loto = Loto.new

# puts loto.lotto_boards.inspect
# # choisir plusieurs grilles
# (1..2).each do |n|
#     puts "Jeu:#{loto.create_lotto_board Loto.random_board}"
#     puts loto.lotto_boards.inspect
# end

#puts "Jeu:#{loto.create_lotto_board.join ','}"
#puts "Jeu:#{loto.create_lotto_board.join ','}"
#puts "Jeu:#{loto.create_lotto_board.join ','}"
# faire 1000 tirages tant qu'on ne gagne pas'
# (1..2).each do |n|
#     puts "Tirage #{n} : #{loto.do_lotto_draw.join ','}"
#     break if loto.win?
# end
# puts "#{loto.boards_count} grilles jouées"
# puts "Dernier résultat du loto : #{loto.lotto_draw}"
# puts loto.win? ? "Loto : numéro(s) gagnant(s) #{loto.lotto_winning_boards}" : "Loto perdu"


# puts "Le tirage a déjà eu lieu" if loto.played?

# if loto.create_lotto_board(Loto.random_board) == false
#     puts "Impossible d'ajouter une grille : le tirage a déjà eu lieu"
# end
