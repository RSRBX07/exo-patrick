#exercices sur les nombres

#calcul nombre de secondes en 1 année
nombre_secondes = 365*24*3600
puts "nombre de secondes par an (hors année bissextile)= #{nombre_secondes}"

#calcul de l'age en secondes'
now = Time.now.to_i
birth = Time.new(1963, 12, 26, 6, 0, 0, 0).to_i
age_secondes=now-birth
puts "age=#{age_secondes} secondes"