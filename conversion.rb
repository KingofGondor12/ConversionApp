require_relative 'binary_convert.rb'
require_relative 'hex_convert.rb'
require_relative 'base_convert.rb'

puts "Enter Base For Conversion:"
base = $stdin.gets.chomp.capitalize
if base == "Binary"
  binary_conversion
elsif base == "Hexadecimal" || base == "Hex"
  hex_conversion
elsif base != "Hexadecimal" || base == "Hex" || base == "Binary"
  @base = base.to_i
  if @base > 36
    puts "Enter A Base Between 1 and 36"
  else
    base_conversion
  end
end
