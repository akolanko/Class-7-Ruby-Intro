=begin
Create a function that takes a string
and adds "Only in America!" to the end of it	
=end

def only_in_america(some_string)
	puts some_string + " Only in America!"
end

=begin
need function that takes and argument
that argument will be an array
reference value to check against
if the next number is bigger than reference value
	it becomes the reference value
at the end of iterating over each item
 	the reference value the largest number
=end

def max_value(our_array)
	reference = -100000
	our_array.each do |number|
		if number > reference
			reference = number
		end
	end
	reference
end

puts max_value([10, 20, 50, -100])

=begin
#need function that takes two arrays as arguments
#the arrays have the same amount of items
#the function combines the arrays into a hash
	into key=>value pairs
#items of first array becomes the key
#items of second array becomes the value
#the hash is returned as a result of the function
=end

def two_array(array_one, array_two)
	my_hash = {}
	array_one.each_with_index do |value, index|
		my_hash[value] = array_two[index]
	end
	puts my_hash
end

#OR

def this_array(that_array, other_array)
	this_hash = {}
	0.upto(that_array.length - 1) do |index|
  		this_hash[that_array[index]] = other_array[index]
	end
	puts this_hash
end

=begin
Create a script that prints out the following pattern 20 times:
fizzbuzz
fizzbuzz
fizz
fizzbuzz
buzz
=end

for n in 0...20
	for i in 1...6
		if i%5 == 0
			puts "buzz"
		elsif i%3 == 0
			puts "fizz"
		else
			puts "fizzbuzz"
		end
	end
end