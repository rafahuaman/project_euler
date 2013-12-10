require 'test/unit'
require './problem_2.rb'

class Problem2Test < Test::Unit::TestCase
  def test_fibonacci_list
    assert(fibonacci_list(0).eql?([]),'First 0')
    assert(fibonacci_list(1).eql?([1]),'First 1')
    assert(fibonacci_list(2).eql?([1, 2]),'First 2')
    assert(fibonacci_list(10).eql?([1, 2, 3, 5, 8]),'First 5')
    fib_array = fibonacci_list(1000)
    (2..(fib_array.length-1)).each do |fib_number|
     assert(fib_array[fib_number] == fib_array[fib_number-1] + fib_array[fib_number-2],'fib sequence failed')
    end
  end
  
  def test_keep_even
    assert( keep_even([1,1]).eql?([]), 'No even' )
    assert( keep_even([1,2]).eql?([2]), 'One even' )
    assert( keep_even([1,2,3,4,5]).eql?([2,4]), '2 even' )
    even_array = keep_even((1..1000).to_a)
    even_array.each do |num|
      assert(num%2==0,'Multiple even')
    end
  end
  
  def test_fib_num
    assert( fib_num(1)==1,'fib 1' )
    assert( fib_num(2)==1,"fib 2 = #{fib_num(2)}" )
    assert( fib_num(3)==2,'fib 3' )
    assert( fib_num(4)==3,'fib 4' )
  end
 
end