#extend Fixnum class to add spell_to_french method
class Fixnum
	# compute private method used by num_to_string method
	def compute number, divider, label, show_one
		divide=number / divider
		modulo=number % divider
		s=''
		if (divide==1 && show_one) || divide > 1
			s = num_to_string(divide) + " "
		end
		s += label
		if divide > 1
			s+= 's'
		end
		s += " "
		s += modulo > 0 ? num_to_string(modulo) : ""			
	end
	private :compute

	def num_to_string number, complete=false
		return_string=''
		case number
			when 0..16
				if complete && number == 0
					return return_string
				end
				if complete && number > 0
					return_string += ([1,11].include? number) ? " et " : " "
				end
				return_string += ["zero","un","deux","trois","quatre","cinq","six","sept","huit","neuf",
								  "dix","onze","douze","treize","quatorze","quinze","seize"][number]
			when 17..19
				if complete
					return_string += " "
				end				
				return_string += "dix" + num_to_string(number-10, true)
			when 20..99				
				divider=10
				divide=number / divider
				modulo=number % divider
				if [7,9].include? divide
					divide -= 1
					modulo += 10
				end
				return_string += [nil,nil,"vingt","trente","quarante","cinquante","soixante",nil,"quatre-vingt"][divide]+num_to_string(modulo, true)
			when 100..999 
				return_string += compute number, 10**2, "cent", false
			when 1000..999999
				return_string += compute number, 10**3, "mille", false
			when 1_000_000..999_999_999
				return_string += compute number, 10**6, "million", true
			when 1_000_000_000..999_999_999_999
				return_string += compute number, 10**9, "milliard", true
		end
	end
	private :num_to_string
	
	def spell_to_french
		num_to_string self
	end
end
