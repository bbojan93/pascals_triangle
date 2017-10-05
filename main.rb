require "./lib/pascals_triangle.rb"

puts "insert number of rows"
input = gets.chomp.to_i
triangle = Triangle.new(input)

puts "Your result is:"
result = triangle.print_triangle
result.each do |row|
  puts row.join(" ")
end
