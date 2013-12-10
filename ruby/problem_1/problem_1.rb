def list_multiples_of(multiple, upper_bound)
  result_array = []
  (1...upper_bound).each do |number| 
    result_array << number if number%multiple == 0
  end
  result_array
end

def sum_of_multiples_3_and_5(upper_bound)
  (list_multiples_of(3,upper_bound) + list_multiples_of(5,upper_bound)).uniq.reduce(:+)
end
