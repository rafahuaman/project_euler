require 'test/unit'
require './problem_1.rb'

class Problem1Test < Test::Unit::TestCase
  def test_list_multiples_of_3_below_number
    multiples_of_3 =  list_multiples_of(3,10)
    answer_array = [3,6,9]
    assert(multiples_of_3.eql?(answer_array) ,'Does not list multiples of 3 below 10')
  end
  
    def test_list_multiples_of_5_below_number
    multiples_of_5 =  list_multiples_of(5,15)
    answer_array = [5,10]
      assert(multiples_of_5.eql?(answer_array) ,'Does not list multiples of 5 below 10')
  end

  def test_sum_of_multiples_3_and_5
    assert(sum_of_multiples_3_and_5(10).eql?(23),'Does not sum accurately')
  end

end