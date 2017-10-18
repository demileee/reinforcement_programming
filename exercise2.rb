def ordinal
  puts "Enter a number."
  x = gets.chomp.to_i
  y = "#{x}th"
  y = "#{x}st" if x%10 == 1
  y = "#{x}nd" if x%10 == 2
  y = "#{x}rd" if x%10 == 3

  y = "#{x}th" if 10 < x && x < 21

  puts "The ordinal number is #{y}."
end

while true
  ordinal
end
