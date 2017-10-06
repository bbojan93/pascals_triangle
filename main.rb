require "./lib/pascals_triangle.rb"

puts "insert number of rows"
rows = gets.chomp.to_i
triangle = Triangle.new(rows)

puts "Your result is:"
result = triangle.print_triangle

result.each do |row|
  if row == 1
    puts row
  else
    puts row.join(" ").center(result.last.length+20)
  end
end
