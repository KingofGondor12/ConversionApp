def base_conversion
  puts "Using Base #{@base}"
  puts "Do you wish to convert to or from #{@base}?"
  user_input = $stdin.gets.chomp.capitalize
  if user_input == "To"
    puts "Enter Integer To Convert:"
    integer = $stdin.gets.chomp.to_i
    integer = integer.to_s(@base)
    puts integer
  elsif user_input == "From"
    puts "Enter Integer To Convert:"
    conversion = $stdin.gets.chomp.to_s
    conversion = conversion.to_i(@base)
    puts conversion
  end
end
