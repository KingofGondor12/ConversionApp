require_relative 'binary_convert.rb'
require_relative 'hex_convert.rb'

puts "Enter Base For Conversion:"
base = $stdin.gets.chomp.capitalize
if base == "Binary"
  binary_conversion
elsif base == "Hexadecimal" || "Hex"
  hex_conversion
end
