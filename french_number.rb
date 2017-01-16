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

<<<<<<< HEAD
def num_to_string number, first_call=true
    if number==0 && first_call==false
        return ""
    end
    string = first_call ? "" : "-"
    if number.class == Fixnum
        case number
        when 0..16
            if first_call==false && (number==1||number==11)
                string += "et-"
            end
            string += ["zero","un","deux","trois","quatre","cinq","six","sept","huit","neuf",
                       "dix","onze","douze","treize","quatorze","quinze","seize"][number]
        when 17..19
            string += "dix" + num_to_string(number-10, false)
        when 20..99
            dizaine = (number-20)/10
            unite = (number-20)%10
            if dizaine == 5 || dizaine == 7
                dizaine -=1
                unite += 10
            end
            string += ["vingt","trente","quarante","cinquante","soixante",nil,"quatre-vingt"][dizaine]+num_to_string(unite, false)
        else
            number_length=number.to_s.length
            multiplier = number / (10**(number_length-1))
            modulo = number % (10**(number_length-1))
            if multiplier > 1
                string += num_to_string(multiplier)
            end
            multiplier_string = ["cent","mille"][number_length-3]
            if modulo==0
                string += ' ' + multiplier_string
            else
                string += ' ' + multiplier_string + ' ' + num_to_string(modulo)
            end
        end
    else
        raise ArgumentError, "#{number} is not a Fixnum"
    end
end

(0..99).each {|n| puts num_to_string n}
#puts num_to_string 20
#puts num_to_string 'toto'
=======
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

(0..119).each {|n| puts n.spell_to_french}
(198..219).each {|n| puts n.spell_to_french}
(999..1009).each {|n| puts n.spell_to_french}
(999999..1000009).each {|n| puts n.spell_to_french}
(1999999999..2000000009).each {|n| puts n.spell_to_french}
