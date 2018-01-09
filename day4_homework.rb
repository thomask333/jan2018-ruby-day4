class Team
	attr_accessor :name, :rank

	def initialize(name, rank)
		@name = name
		@rank = rank
	end
	def new_rank
		@rank -1
	end
end

exit = false
team = []

def tourniment_gen(bool, arr)

while bool == false do
	arr_length = arr.length
	start = 0
	endnum = arr_length	-1
	new_length = arr_length	+1
	div_length = arr_length/2
puts "*******************************"
puts "Welcome to My Tourniment Generator.  Enter a Selection:"
puts "1. Enter Teams"
puts "2. List Teams"
puts "3. List Matchups"
puts "0. Exit Program"
puts "*******************************"
option = gets.chomp.to_i

if option == 0
	bool = true
elsif option == 1
	puts "How many teams are you entering?"
	num = gets.chomp.to_i
		num.times do
			puts "Please enter your team"
			 name = gets.chomp
			 puts "Please enter their rank"
			 rank = gets.chomp.to_i	
			 new_team = Team.new(name, rank)
			 arr.insert(new_team.new_rank,new_team)
			end
			 start =0
		elsif option == 2
			arr.each do|index|
				puts "**************"
				puts "#{index.rank}: #{index.name}"
			end
		elsif option ==3
		if arr_length%2 == 1
			div_length.times do
				puts "#{arr[start].name} gets a bye."
					start+=1
					new_length+=1
				if (arr[start].rank + arr[endnum].rank) == new_length
					puts "#{arr[start+1].name} vs #{arr[endnum].name}"
					start+=1
					endnum-=1
					end
				end	
		else
			div_length.times do
				if (arr[start].rank + arr[endnum].rank) == new_length
					puts "#{arr[start].name} vs #{arr[endnum].name}"
					start+=1
					endnum-=1
						end	
					end
					start =0
					endnum =arr_length -1
				end	
			end
		end
	end 


tourniment_gen(exit, team)