#exercices sur les nombres

#calcul nombre de secondes en 1 année
nombre_secondes = (365.25*24*3600).to_i
puts "nombre de secondes par an : #{nombre_secondes}"

#calcul de l'age en secondes'
now = Time.now
birth = Time.new(1963, 12, 26)
birth2 = Time.new("1963-12-26T06:00:00 +0200")
age_secondes=now-birth2
puts "age=#{age_secondes} secondes"
puts "age=#{now-birth} secondes"

coef=Time.now.to_i / nombre_secondes
puts "origin : #{Time.now.year - coef}"

origin=Time.new(0)
puts "origin (new 0) : #{origin.to_i / nombre_secondes}"

