require_relative 'binary_convert.rb'
require_relative 'hex_convert.rb'

puts "Enter Base For Conversion:"
base = $stdin.gets.chomp.capitalize
if base == "Binary"
  binary_conversion
elsif base == "Hexadecimal" || base == "Hex"
  hex_conversion
elsif base != "Hexadecimal" || base == "Hex" || base == "Binary"
  base = base.to_i
  if base > 36
    puts "Enter A Base Between 1 and 36"
  else
    puts "Using Base #{base}"
    puts "Do you wish to convert to or from #{base}?"
    user_input = $stdin.gets.chomp.capitalize
    if user_input == "To"
      puts "Enter Integer To Convert:"
      integer = $stdin.gets.chomp.to_i
      integer = integer.to_s(base)
      puts integer
    elsif user_input == "From"
      puts "Enter Integer To Convert:"
      conversion = $stdin.gets.chomp.to_s
      conversion = conversion.to_i(base)
      puts conversion
    end
  end
end
