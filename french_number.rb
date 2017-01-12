# ecrire une methode
# - qui prend une instance de Fixnum en argument entre 0 et 9
# - qui retourne la chaîne de caractère du nombre écrit en toutes lettres

def num_to_string number
    ["zero","un","deux","trois","quatre","cinq","six","sept","huit","neuf"][number]
end

(0..9).each {|n| puts num_to_string n}

