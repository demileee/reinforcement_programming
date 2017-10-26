a=["Totam", "ut", "odit","quis", "Maiores", "unde", "EX", "EST", "corporis"]

a.each do |str|
  if str.downcase == str && str.length >= 4
    puts "long and lowercase"
  elsif str.downcase == str
    puts "lowercase"
  elsif str.length >= 4
    puts "long"
  else 
    puts "#{str}"
  end
end
