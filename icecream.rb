require 'pry'

class Icecream
  attr_reader :flavor, :vegan

  @@all = []
  #@@toppings = [] <-- NOOOOOO DO NOT DO THIs -->

  def initialize(flavor, vegan)
    @flavor = flavor
    @vegan = vegan
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def add_topping(topping_name)
    Topping.new(topping_name, self)
  end

  def self.find_vegan_icecream
    all.select {|icecream| icecream.vegan == true}
  end

  def toppings
    topping_array = Topping.all.select {|topping| topping.icecream == self}
    topping_array.map {|topping| topping.name}
  end

end
