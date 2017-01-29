# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Image.create(
  title: 'The old church at the cost of the white sea',
  artist: 'Sergey Ershov',
  url: 'http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg',
  year: 2003
)
Image.create(
  title: 'Sea Power',
  artist: 'Stephen Scullion',
  url: 'http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg',
  year: 2007
)
Image.create(
  title: 'Into the Poppies',
  artist: 'John Wilhelm',
  url: 'http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg',
  year: 2000
)
