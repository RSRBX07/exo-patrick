meta={
    'place' =>'Roubaix',
    'author'=>'Patrick'
}
zipcodes={
    'roubaix'  => 59100,
    'ennevelin'=> 59710,
    'lille'    => 59000,
    'toulon'   => 83000
}

print "Donner moi une ville : "
state=gets.chomp.downcase
print"Vous habitez #{state}"
code=zipcodes[state]
puts code ? " code postal #{code}" : ", mais je ne connais pas son code postal"

puts "made in @#{meta['place']} by #{meta['author']}"

