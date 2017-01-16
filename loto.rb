class Loto

	@lotto_board = nil
	@lotto_draw  = nil

	def create_lotto_board
		#saisie d'une grille de 5 numéros
		begin
			print "Entrez une série de 5 numéros entre 1 et 49, séparés par des espaces : "
			input_lotto_board = gets.chomp.split(' ')
			#conversion numérique, contrôle des limites et unicité
			@lotto_board = input_lotto_board.collect{|number| number.to_i}.uniq.reject{|number| number < 1 || number > 49}
		end until @lotto_board.length == 5
		return @lotto_board
	end

	def do_lotto_draw
		#tirage du loto
		@lotto_draw = (1..49).to_a.shuffle.take(5).sort
	end

	def win?
		played? && return_winning_number.length >= 2
	end

	def played?
		@lotto_board && @lotto_draw
	end

	def return_winning_number
		#numéros gagnants
		@lotto_draw & @lotto_board
	end
end