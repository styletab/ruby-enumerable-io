require 'csv'
require_relative 'pet.rb'

class Pets
  attr_reader :pets
  def initialize
    @pets = []
    CSV.foreach('data/fish.csv',
                headers: true,
                header_converters: -> (h) { h.downcase.to_sym }) do |fish|
      #  puts pet
      @pets << Fish.new(fish.to_hash)
    end
  end
end
