# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create(
  [
    { email: 'a@a.com', name: "Mr. Aardvark", password: "a", password_confirmation: "a"},
    { email: 'b@b.com', name: "Mr. Bear", password: "b", password_confirmation: "b"},
    { email: 'c@c.com', name: "Mr. Cat", password: "c", password_confirmation: "c"},
    { email: 'd@d.com', name: "Mr. Dog", password: "d", password_confirmation: "d"},
    { email: 'e@e.com', name: "Mr. Elephant", password: "e", password_confirmation: "e"},
    { email: 'f@f.com', name: "Mr. Fox", password: "f", password_confirmation: "f"},
    { email: 'g@g.com', name: "Mr. Gopher", password: "g", password_confirmation: "g"},
    { email: 'h@h.com', name: "Mr. Horse", password: "h", password_confirmation: "h"},
    { email: 'i@i.com', name: "Mr. Iguana", password: "i", password_confirmation: "i"},
    { email: 'j@j.com', name: "Mr. Jackrabbit", password: "j", password_confirmation: "j"},
    { email: 'k@k.com', name: "Mr. Kangaroo", password: "k", password_confirmation: "k"},
  ]
)

cpus = Cpu.create(
  [
    { price: '200', name: "OC 3.4ghz intel 5i"},
    { price: '130', name: "cpu2"},
    { price: '260', name: "cpu3"},
  ]
)

cases = Case.create(
  [
    { price: '30', name: "case 1"},
    { price: '80', name: "case 2"},
    { price: '130', name: "case 3"},
  ]
)

mboards = Mboard.create(
  [
    { price: '80', name: "motherboard 1"},
    { price: '140', name: "motherboard 2"},
    { price: '220', name: "motherboard 3"},
  ]
)

gcards = Gcard.create(
  [
    { price: '120', name: "nvidia GTX 950"},
    { price: '190', name: "nvidia GTX 960"},
    { price: '240', name: "nvidia GTX 970"},
  ]
)
