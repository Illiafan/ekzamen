def multiplier(factor)
lambda { |number| number * factor }
end

multiply_by_2 = multiplier(2)
puts multiply_by_2.call(5)  
