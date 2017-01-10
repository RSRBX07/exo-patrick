#afficher un tirage de 5 numéros du loto entre 1 et 49
#tirage=(1..49).to_a.shuffle.take(5).sort
#print "Tirage : #{tirage.join ', '}"

#affichage de la cagnotte
#entre 100 et 500k€
#le vendredi 13, la cagnotte est de 2M
require 'Date'
current_day=Date.today
is_vendredi_13=current_day.day==13 && current_day.friday?
cagnotte = if is_vendredi_13 then 2000000 else rand 100000..500000 end
puts "la cagnotte du jour : #{cagnotte} €"