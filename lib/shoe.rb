require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = []

  def initialize(brand)
    @brand = brand
    if BRANDS.count == 0
      BRANDS << @brand
    elsif BRANDS[-1] != @brand
      BRANDS << @brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
