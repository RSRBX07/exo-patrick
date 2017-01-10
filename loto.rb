#afficher un tirage de 5 numéros du loto entre 1 et 49
tirage=(1..49).to_a.shuffle.take(5).sort
print "Tirage : #{tirage.join ', '}"