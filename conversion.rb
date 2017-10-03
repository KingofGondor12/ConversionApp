require_relative 'binary_convert.rb'
require_relative 'hex_convert.rb'
require_relative 'base_convert.rb'

puts "Enter Base For Conversion:"
base = $stdin.gets.chomp.capitalize
if base == "Binary" || base == "2"
  binary_conversion
elsif base == "Hexadecimal" || base == "Hex" || base =="16"
  hex_conversion
elsif base != "Hexadecimal" || base != "Hex" || base != "Binary" || base != "2" || base !="16"
  @base = base.to_i
  if @base > 36
    puts "Enter A Base Between 1 and 36"
  elsif @base <= 36 && @base > 0
    base_conversion
  else
    puts "Unknown Base. Please Enter A Base Between 1 and 36."
  end
end
