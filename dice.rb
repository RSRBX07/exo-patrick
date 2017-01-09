#afficher le résultat d'un tirage de dé à 6 faces'
faces=[1,2,3,4,5,6]
10.times {print faces[rand 6],' '}
puts
10.times {print faces.shuffle[0],' '}

