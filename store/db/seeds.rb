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
    { name: "Intel Pentium G3258, 2 x 3.2ghz"},
    { name: "Intel Pentium 945+, 2 x 3.4ghz"},
    { name: "Intel i5-4690k, 4 x 3.5ghz"},
    { name: "Intel i7-4790k, 4 x 4ghz"},
    { name: "Intel i7-930, 4 x 2.8ghz"},
    { name: "AMD Anthlon 860k Black Edition, 4 x 3.7ghz"},
    { name: "AMD FX-8350 Black Edition, 8 x 4.0ghz"},
    { name: "Intel Xeon E5-2698 v3, 16 x 2.3 ghz"},
  ]
)

cases = Case.create(
  [
    { name: "Sentey Gs-6008 Plus Stealth Gaming Computer Case"},
    { name: "Rosewill Dual Fans MicroATX Mini Tower Computer Case"},
    { name: "Thermaltake Core P5 ATX Open Frame Mid Tower Wall Mount 180 Degree Liquid Cooling Gaming Computer Case"},
    { name: "Corsair Carbide Series SPEC-02 Mid Tower Gaming Case"},
    { name: "Apevia X-Sniper 2 Metal Case with Side Window-Green"},
    { name: "NZXT S340 Mid Tower Case"},
    { name: "NZXT Phantom 410 Mid Tower"},
    { name: "Vivo ATX Mid Tower Computer Gaming PC Case"},
    { name: "Raidmax Viper Black Gaming Tower Case"},
  ]
)

mboards = Mboard.create(
  [
    { name: "MSI 970 Gaming DDR3 2133 ATX Motherboard"},
    { name: "ASUS ROG Maximus VII Formula ATX Motherboard"},
    { name: "Asus Z97-A ATX Motherboard"},
    { name: "Gigabyte 760G Micro Atx Motherboard"},
    { name: "Gigabyte Z170 Gaming Motherboard"},
  ]
)

gcards = Gcard.create(
  [
    { name: "None"},
    { name: "Nvidia GTX 550"},
    { name: "Nvidia GTX 850"},
    { name: "Nvidia GTX 950"},
    { name: "Nvidia GTX 960"},
    { name: "Nvidia GTX 970"},
    { name: "Nvidia Titan"},
    { name: "AMD R7 370"},
    { name: "AMD R7 240"},
  ]
)

rams = Ram.create(
  [
    { name: "HyperX 1600mhz, 8gb"},
    { name: "Kingston 1333mhz, 4gb"},
    { name: "Kingston 1600mhz, 16gb"},
  ]
)

harddrives = Harddrive.create(
  [
    { name: "SSD 120GB"},
    { name: "SSD 240GB"},
    { name: "Hard drive 200GB"},
    { name: "Hard drive 320GB"},
    { name: "Hard Drive 1TB"},
  ]
)
users.each do |user|
  x=0;
  y=Random.new;
  while x < y.rand(4)+1
    Computer.create(user_id: user.id, gcard_id: gcards.sample.id, cpu_id: cpus.sample.id, mboard_id: mboards.sample.id, case_id: cases.sample.id, harddrive_id: harddrives.sample.id, ram_id: rams.sample.id, quality: ['new','good','okay','poor'].sample, price: rand(2000)+100)
  x=x+1;
  end
end
