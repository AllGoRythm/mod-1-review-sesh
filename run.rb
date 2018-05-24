require 'pry'
require_relative 'icecream.rb'
require_relative 'toppings.rb'

chocolate = Icecream.new('chocolate', false)
vanilla = Icecream.new('vanilla', false)
coconut = Icecream.new('coconut', true)
mintchip = Icecream.new('mintchip', true)

vanilla.add_topping('chocolate syrup')
vanilla.add_topping('cookies')
vanilla.add_topping('gummy bears')

mintchip.add_topping('oreos')
mintchip.add_topping('lettuce')

chocolatejimmies = Topping.new('chocolate jimmies', mintchip)

pry.start
