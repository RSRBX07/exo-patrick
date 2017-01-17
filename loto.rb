class Loto

	attr_reader :lotto_winning_boards
	attr_reader :boards_count
	attr_reader :lotto_draw

	def initialize
		@lotto_boards = []
		@lotto_draw  = nil
		@lotto_winning_boards = []
		@boards_count = 0
	end

	def self.random_board
		begin
			board = []
			5.times {board << rand(1..50)}
			lotto_board = board.uniq
		end until lotto_board.length == 5
		lotto_board
	end

	def create_lotto_board board=nil
		return false if played?
		if !!board
			new_board = board.sort
			@lotto_boards << new_board
			return new_board
		end
		#saisie d'une grille de 5 numéros
		begin
			print "Entrez une série de 5 numéros entre 1 et 49, séparés par des espaces : "
			input_lotto_board = gets.chomp.split(' ')
			#conversion numérique, contrôle des limites et unicité
			lotto_board = input_lotto_board.collect{|number| number.to_i}.uniq.reject{|number| number < 1 || number > 49}
		end until lotto_board.length == 5
		@lotto_boards << lotto_board
		return lotto_board
	end

	def do_lotto_draw
		#tirage du loto
		@boards_count += @lotto_boards.length
		@lotto_draw = (1..49).to_a.shuffle.take(5).sort
	end

	def win?
		if played?
			define_winning_boards
			@lotto_winning_boards.length > 0
		else
			return false
		end
	end

	def played?
		!!@lotto_draw
	end

	private
	def define_winning_boards
		#meilleurs numéros gagnants
		@lotto_winning_boards = []
		@lotto_boards.each do |board|
			winning_board = board & @lotto_draw
			if winning_board.length >= 2
				@lotto_winning_boards << winning_board
			end
		end
		@lotto_winning_boards
	end
	
end