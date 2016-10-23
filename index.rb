require_relative 'Factory.rb'

puts " ---- Customer = Factory.new(:name, :address, :zip)"
Customer = Factory.new(:name, :address, :zip)
puts Customer.to_s

puts " ---- Customer.new('Joe Smith', '123 Maple, Anytown NC', 12345)"
joe = Customer.new('Joe Smith', '123 Maple, Anytown NC', 12345)
puts joe.to_s

puts " ---- joe.name"
puts joe.name

puts " ---- joe['name']"
puts joe['name']

puts " ---- joe[:name]"
puts joe[:name]

puts " ---- joe[0]"
puts joe[0]


puts ' ---- Customer1 = Factory.new(:name, :address) do
   ---- def greeting
     ---- "Hello #{name}!"
   ---- end
 ---- end
'
Customer1 = Factory.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end
puts Customer1.to_s

puts " ---- Customer1.new('Dave', '123 Main').greeting"
puts Customer1.new('Dave', '123 Main').greeting
