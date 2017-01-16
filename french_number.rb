# ecrire une methode
# - qui prend une instance de Fixnum en argument entre 0 et 9
# - qui retourne la chaîne de caractère du nombre écrit en toutes lettres

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
