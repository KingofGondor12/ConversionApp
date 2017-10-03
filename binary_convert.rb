def binary_conversion
  puts "Do you wish to convert to or from binary?"
  user_input = $stdin.gets.chomp.capitalize
  if user_input == "To"
    puts "Enter Integer To Convert:"
    integer = $stdin.gets.chomp.to_i
    integer = integer.to_s(2)
    puts integer
  elsif user_input == "From"
    puts "Enter Binary To Convert:"
    binary = $stdin.gets.chomp.to_s
    binary = binary.to_i(2)
    puts binary
  end
end
