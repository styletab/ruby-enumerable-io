require 'csv'
require_relative 'pet.rb'

# Pet class
class Pets
  attr_reader :pets
  def initialize
    @pets = []
    CSV.foreach('data/pets.csv',
                headers: true,
                header_converters: -> (h) { h.downcase.to_sym }) do |pet| # converting headers into symbols
      #  puts pet
      @pets << Pet.new(pet.to_hash)
    end
  end
end

#  we are creating a new instance of the class pets, which is an array and we're
# iterating over the CSV file to add in pet class hashes into the @pets instance
# aka extracting the data from a file and pushing it into our pets array 
