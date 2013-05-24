class Building
  attr_accessor :floors, :address, :total_units, :handicap_access

  def initialize(address, floors, total_units, handicap_access)
    @address = address
    @floors = floors
    @total_units = total_units
    @handicap_access = handicap_access
  end
end

class Apartment
  attr_accessor :residents, :total_bedrooms, :total_bathrooms, :square_ft, :vacant, :air_conditioned

  def initialize(residents=nil, total_bedrooms, total_bathrooms, square_ft, vacant, air_conditioned)
    @residents = residents
    @total_bedrooms = total_bedrooms
    @total_bathrooms = total_bathrooms
    @square_ft = square_ft
    @vacant = vacant
    @air_conditioned = air_conditioned
  end
end

class Resident
  attr_accessor :apartment, :name, :age, :credit_rating, :nationality, :employed

  def initialize(apartment=nil, name, age, credit_rating, nationality, employed)
    @apartment = apartment
    @name = name
    @age = age
    @credit_rating = credit_rating
    @nationality = nationality
    @employed = employed
  end
end
