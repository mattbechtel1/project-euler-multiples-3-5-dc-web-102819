# Enter your procedural solution here!

def multiplesOf3
    (0...1000).select {|num| num % 3 == 0}
end

def multiplesOf5
    (0...1000).select {|num| num % 5 == 0}
end

puts multiplesOf3.concat(multiplesOf5).uniq.reduce { |memo, num| memo + num}

def collect_multiples(limit)
    (1...limit).select { |num| num % 3 == 0 || num % 5 == 0}
end

def sum_multiples(limit)
    collect_multiples(limit).reduce {|memo, num| memo + num}
end