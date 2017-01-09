#exercices sur les nombres

#calcul nombre de secondes en 1 année
nombre_secondes = 365*24*3600
puts "nombre de secondes par an (hors année bissextile)= #{nombre_secondes}"

#calcul de l'age en secondes'
now = Time.now
birth = Time.new(1963, 12, 26)
birth2 = Time.new("1963-12-26T06:00:00 +0200")
age_secondes=now-birth2
puts "age=#{age_secondes} secondes"
puts "age=#{now-birth} secondes"

origin=Time.new(0)
test=Time.new(1,1,1)
p(origin)
p(test)
p((test-origin).to_i)