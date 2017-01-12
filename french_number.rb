# ecrire une methode
# - qui prend une instance de Fixnum en argument entre 0 et 9
# - qui retourne la chaîne de caractère du nombre écrit en toutes lettres

def num_to_string number
    if number.class == Fixnum && number >= 0 && number <= 9
        ["zero","un","deux","trois","quatre","cinq","six","sept","huit","neuf"][number]
    else
        raise ArgumentError, 'number is not a Fixnum or is not in 0..9'
    end
end

(0..9).each {|n| puts num_to_string n}
puts num_to_string 'toto'
