#afficher le résultat d'un tirage de dé à 6 faces'
faces=[1,2,3,4,5,6]
100.times() do 
    alea=rand(6)
    print faces[alea],' '
end

