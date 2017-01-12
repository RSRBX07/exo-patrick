meta={
    place:  :Roubaix,
    author: :Patrick
}
zipcodes={
    roubaix:   59100,
    ennevelin: 59710,
    lille:     59000,
    toulon:    83000
}

print "Donner moi une ville : "
state=gets.chomp.downcase.to_sym
print"Vous habitez #{state}"
code=zipcodes[state]
puts code ? " code postal #{code}" : ", mais je ne connais pas son code postal"
if code
  ziptowns=zipcodes.invert
  verify_town=ziptowns[code]
  puts "vérification : une ville correspondant à #{code} est #{verify_town}"
end

puts "made in @#{meta[:place]} by #{meta[:author]}"

