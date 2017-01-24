# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Game.create([
  {name:'Loto du lundi', description:'Le tirage est', draw: '12, 42, 11, 6, 33'},
  {name:'Loto du mardi', description:'Le tirage est', draw: '13, 42, 11, 6, 33'},
  {name:'Loto du mercredi',description:'Le tirage est', draw: '14, 42, 11, 6, 33'},
  {name:'Loto du jeudi', description:'Le tirage est', draw: '15, 42, 11, 6, 33'},
  {name:'Loto du vendredi', description:'Le tirage est', draw: '16, 42, 11, 6, 33'}])