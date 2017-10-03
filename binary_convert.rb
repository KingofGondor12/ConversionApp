def convert(str)
  str.split('').reduce(0) { |m,x| 10 * (m + '0123456789'.index(x)) } / 10
end
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
    base = 1
    total = 0
    binary.split('').reverse.each do |digit|
      total = total + (convert(digit) *  base)
      base = base * 2
    end
    puts total
  end
end
