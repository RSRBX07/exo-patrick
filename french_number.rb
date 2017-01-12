# ecrire une methode
# - qui prend une instance de Fixnum en argument entre 0 et 9
# - qui retourne la chaîne de caractère du nombre écrit en toutes lettres

def num_to_string number
    case number
    when 0
        "zero"
    when 1
        "un"
    when 2
        "deux"
    when 3
        "trois"
    when 4
        "quatre"
    when 5
        "cinq"
    when 6
        "six"
    when 7
        "sept"
    when 8
        "huit"
    when 9
        "neuf"
    else
        "chiffre inconnu"
    end
end

puts num_to_string 'toto'
puts num_to_string 5