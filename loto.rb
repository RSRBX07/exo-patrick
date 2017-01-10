#saisie d'une grille de 5 numéros
begin
	print "Entrez une série de 5 numéros entre 1 et 49, séparés par des espaces : "
	input_lotto_board = gets.chomp.split(' ')
	#conversion numérique, contrôle des limites et unicité
	lotto_board = input_lotto_board.collect{|number| number.to_i}.uniq.reject{|number| number < 1 || number > 49}
end until lotto_board.length == 5
#grille jouée
puts "Grille #{lotto_board.join ','}"
#tirage du loto
lotto_draw = (1..49).to_a.shuffle.take(5).sort
puts "Tirage #{lotto_draw.join ','}"
#numéros gagnants
winning_number = lotto_draw & lotto_board
(winning_number.length==0) ? (puts "Aucun numéro gagnant") : (puts "Numéro(s) gagnant(s) #{winning_number.join ','}")