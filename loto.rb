#afficher un tirage de 5 numéros du loto entre 1 et 49
tirage=Array.new(49){|n|n+1}.shuffle.take(5).sort
print "Tirage : #{tirage.join ', '}"