# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

state = State.create({name: 'Rio grande do sul', uf: 'RS'})

city = City.create({name: 'Taquara', state: state})

place = Place.create({name: 'Casa do Jean', address: 'Travessa Reis', number: 250, district: 'Santa Rosa', city: city})

organization = Organization.create({name: 'TechParty', place: place})

event = Event.create({name: '5 TechParty', description: 'Quinta TechParty', min_age: 12, place: place, visible: true})

category = Category.create({name: 'Tecnologia'})

session = Session.create({event: event, datetime: Date.current, price: '[{"Inteira": 22}]'})

featureEvent = FeaturedEvent.create({event: event, initial_date: Date.current, end_date: Date.current, priority: 0})

user = User.create({name: 'events', email: 'events@events4me.in', password: 'events', password_confirmation: 'events', admin: true, push: true, birthdate: Date.current})