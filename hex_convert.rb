def hex_conversion
  puts "Do you wish to convert to or from hexadecimal?"
  user_input = $stdin.gets.chomp.capitalize
  if user_input == "To"
    puts "Enter Integer To Convert:"
    integer = $stdin.gets.chomp.to_i
    integer = integer.to_s(16)
    puts integer
  elsif user_input == "From"
    puts "Enter Hexadecimal To Convert:"
    hex = $stdin.gets.chomp.to_s
    hex = hex.to_i(16)
    puts hex
  end
end
