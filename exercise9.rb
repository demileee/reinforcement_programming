ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

first = []
second = []
third = []

ballots.each do |ballot|
  first << ballot[1]
  second << ballot[2]
  third << ballot[3]
end

candidates = []

first.each {|name| candidates << name }
second.each {|name| candidates << name }
third.each {|name| candidates << name }
candidates = candidates.uniq

tally = Hash[candidates.collect {|candidate| [candidate, 0] } ]

first.each { |name| tally[name] += 3 }
second.each { |name| tally[name] += 2 }
third.each { |name| tally[name] +=1 }

puts tally.first
