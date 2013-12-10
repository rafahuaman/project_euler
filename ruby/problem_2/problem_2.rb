def fibonacci_list(upper_bound)
  return [] if upper_bound == 0
  fib_list= []
  i = 2
  fib_next = fib_num(i)
  while fib_next <= upper_bound do
    i+=1
    fib_list << fib_next
    fib_next = fib_num(i)
  end
  fib_list
end
  
def fib_num(nth_number)
  fib_num = Hash.new{ |hash, key| hash[key] = key < 2 ? key : hash[key-1] + hash[key-2] }
  fib_num[nth_number]
end
  
def keep_even(num_array)
  num_array.delete_if { |num| num%2 != 0 }
end
  
def problem_solution(upper_bound)
  keep_even(fibonacci_list(4000000)).reduce(:+)                                                                                                                                                           
end