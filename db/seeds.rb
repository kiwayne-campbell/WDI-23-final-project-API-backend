# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users","festivals","comments","festivals_users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  image: "http://www.telegraph.co.uk/content/dam/news/2016/05/15/97567024_Damian-Lewis-NEWS-large_trans++qVzuuqpFlyLIwiB6NTmJwfSVWeZ_vEN7c6bHu2jJnT8.jpg",
  password: "password",
  password_confirmation: "password"
},{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  image: "http://img08.deviantart.net/0de7/i/2015/012/c/a/pikachu_with_ash_s_cap_by_shadow86sk-d8doqwj.png",
  password: "password",
  password_confirmation: "password"
},{
  username: "willc",
  email: "will.cook@ga.co",
  image: "https://rmagibess.files.wordpress.com/2011/05/kiwi_bird.jpg",
  password: "password",
  password_confirmation: "password"
},{
  username: "mattc",
  email: "matt.calthrope@ga.co",
  image: "https://www.rydges.com/accommodation/new-zealand/the-thorndon-hotel-wellington/wp-content/uploads/sites/42/2016/09/guns-n-roses.jpg",
  password: "password",
  password_confirmation: "password"
},{
  username: "kiwi",
  email: "kiwi.@gamail.com",
  image: "https://lh5.googleusercontent.com/-FI3UvSKqsjk/VGwZAB7QJSI/AAAAAAAABsE/4gzW2GgFALw/w822-h822/hingle.jpg",
  password: "password",
  password_confirmation: "password"
},{
  username: "willw",
  email: "will.w@gmail.com",
  image: "http://www.ew.com/sites/default/files/styles/tout_image_612x380/public/i/2016/10/17/westworld-01_0.jpg?itok=caNLCNoZ",
  password: "password",
  password_confirmation: "password"
}])

Festival.create!([{
  festival_name: "Keeerazy Festival",
  location: "Somerset",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "18",
  cost:"5.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/403065/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "CSS Festival",
  location: "London, United Kingdom",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"4.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/1068/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "HTML Festival",
  location: "Manchester, United Kingdom",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"5.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/304104/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Javascript Festival",
  location: "Liverpool, United Kingdom",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"6.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/280174/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Gumball 3000 Festival",
  location: "Cardiff, United Kingdom",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "18",
  cost:"7.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/1068/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Sewing Festival",
  location: "Scotland, United Kingdom",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "18",
  cost:"8.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/1068/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Drink-a-lot Festival",
  location: "Newcastle, United Kingdom",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"9.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/1068/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Space Festival",
  location: "Ireland, United Kingdom",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"10.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/403065/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Psychadelic Festival",
  location: "Berlin, Germany",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "18",
  cost:"11.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/403065/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Jokes Festival",
  location: "Zurich, Switzerland",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"12.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/403065/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Snow Festival",
  location: "Dorset, United Kingdom",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"13.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/403065/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Food Festival",
  location: "Plymouth, United Kingdom",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "18",
  cost:"14.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/403065/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "LGBT Festival",
  location: "Sheffield, United Kingdom",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"15.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/304104/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Funky Festival",
  location: "New York, United States",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "18",
  cost:"16.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/304104/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Drone Festival",
  location: "San Francisco, United States",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "18",
  cost:"17.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/304104/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Film Festival",
  location: "Auckland, New Zealand",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"18.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/280174/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Airplane Festival",
  location: "Tokyo, Japan",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "18",
  cost:"19.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/280174/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Comic Festival",
  location: "Paris, France",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"20.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/280174/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "a-Nice Festival",
  location: "Toronto, Canada",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "18",
  cost:"21.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/280174/1600x900
",
  latitude:"",
  longitude:""
},{
  festival_name: "Down-under Festival",
  location: "Melbourne, Australia",
  start: "2017-03-01",
  finish: "2017-03-04",
  minimum_age: "21",
  cost:"22.5",
  details:"This festival rocks!",
  image:"https://source.unsplash.com/collection/280174/1600x900
",
  latitude:"",
  longitude:""
}])

puts User.all
