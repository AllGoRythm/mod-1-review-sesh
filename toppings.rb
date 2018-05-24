class Topping
  attr_accessor :name, :icecream
  @@all = []

  def initialize(name, icecream)
    @name = name
    @icecream = icecream
    @@all << self
  end

  def self.all
    @@all
  end

end
