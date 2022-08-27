require 'faker'

require_relative 'lion'
require_relative 'meerkat'
require_relative 'wharthog'


animals = []
animals << Lion.new("Mufasa")
animals << Lion.new("Zimba")
animals << Meerkat.new("Timon")
animals << Wharthog.new("Pumba")

animals.each do |animal|
  puts "#{animal.talk} and #{animal.eat(Faker::Food.fruits)}"
end
