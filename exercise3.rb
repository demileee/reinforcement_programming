def options
  all = [
    [nil, "Pumpkin", nil, nil],
    ["Socks", nil, "Mimi", nil],
    ["Gismo", "Shadow", nil, nil],
    ["Smokey","Toast","Pacha","Mau"]
  ]

  puts "Welcome to class."

  all.each_with_index do |row, index1|
    row.each_with_index do |seat, index|
      if seat == nil
        puts "Row #{index1+1} seat #{index+1} is free. Do you want to sit there? (y/n)"
        input = gets.chomp
        if input == "y"
          puts "What is your name?"
          name = gets.chomp
          all[index1][index] = name
        end
      end
    end
  end
end

options
