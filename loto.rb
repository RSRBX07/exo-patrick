#afficher un tirage de 5 numéros du loto entre 1 et 49
tirage=[]
while tirage.length < 5
    x = 1+rand(49)
    if !tirage.include? x
        tirage.push(x)
    end
end
print tirage
