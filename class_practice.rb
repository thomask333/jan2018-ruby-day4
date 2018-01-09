# class Person
# 	attr_accessor  :name, :age
#  def initialize(name, age) 
# 	@name =name
# 	@age = age
#  end

#  def birthday
#  	@age+=1
#  end
#  def change_name(new_name)
#  	@name = new_name
#  end
# end

# my_person = Person.new("Thomas", 27)

# puts my_person
# puts my_person.name
# puts my_person.age

# puts "My name is #{my_person.name} and I am #{my_person.age} years old"
# my_person.birthday
# puts my_person.age

# my_person.change_name("Bill")
# puts my_person.name

# class User
# 	def initialize(name, email)
# 		@name = name
# 		@email = email
# 	end

# end

# class Pet
# 	attr_accessor :name, :species, :age

# 	def initialize(name, species, age)
# 		@name = name
# 		@species = species
# 		@age = age
# 	end

# 	def sound
# 		if @species == "cat"
# 			return "Meow"
# 		elsif @species == "dog"
# 			return "Woof"
# 		elsif @species =="lion"
# 			return "Roooar"
# 		else
# 			return "blah"
# 		end
# 	end

# end


# my_pet = Pet.new("Fluffy", "cat", 4)

# puts "#{my_pet.name} is a #{my_pet.species} who is #{my_pet.age} years old"
# puts "#{my_pet.name} make the sound #{my_pet.sound}."


# class Product
# 	attr_accessor :name, :brand, :price, :quantity
# 	def initialize(name, brand, price, quantity)cls
# 		@name = name
# 		@brand = brand
# 		@price = price
# 		@quantity = quantity
# 	end

# 	def add_quantity(amount)
# 		@quantity+=amount
# 	end

# 	def sub_quantity(amount)
# 		@quantity-=amount
# 	end
# end

# my_product = Product.new("Table", "Ikea", 199.99, 10)

# puts "#{my_product.name}, Brand: #{my_product.brand}, Price: $#{my_product.price}, Quantity: #{my_product.quantity}"
# my_product.add_quantity(10)

# puts "my new quantity is #{my_product.quantity}"

# my_product.sub_quantity(20)

# puts "my new quantity is #{my_product.quantity}"

# class Vehicle
# 	attr_accessor :make, :model, :price

# 	def initialize(make, model, price)
# 		@make = make
# 		@model = model
# 		@price = price
# 	end

# 	def change_price(new_price)
# 		@price = new_price
# 	end
# end

# my_vehicle = Vehicle.new("Honda", "Odyssey", 1000000)

# puts "My favorite car is the #{my_vehicle.make} #{my_vehicle.model} and it costs $#{my_vehicle.price}"
# puts "Yay! Its on sale!  The new price is $#{my_vehicle.change_price(800000)}"


class Person
	attr_accessor  :name, :age
 def initialize(name, age) 
	@name =name
	@age = age
 end

 def birthday
 	@age+=1
 end
 def change_name(new_name)
 	@name = new_name
 end
end

puts " Welcome to the Employee System.  How many employees would you like to enter?"
num = gets.chomp.to_i

employees =[]

num.times do 
	puts "Enter Employee name"
	name = gets.chomp
	puts "Enter Employee age"
	age = gets.chomp.to_i

	new_employee = Person.new(name, age)
	employees.push(new_employee)
end
 puts "The Employees are"

 employees.each do |employee|
 		puts "Employee: #{employee.name}, #{employee.age}"
 	end
