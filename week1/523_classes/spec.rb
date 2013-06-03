 require_relative 'bldg_apts_res.rb'

 bob = Resident.new(nil, "Bob", 35, 600, "German", true)
 liz = Resident.new(nil, "Liz", 32, 450, "Chinese", false)
 apartment_3d = Apartment.new([bob, liz], 2, 1, 3000, false, true)
 broadway_123 = Building.new("123 Broadway", 4, 24, false)
 bob.apartment = apartment_3d
 liz.apartment = apartment_3d
 apartment_3d.residents = [bob, liz]