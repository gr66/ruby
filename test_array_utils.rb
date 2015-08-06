require_relative "array_utils"
require "test/unit"

class TestArrayUtils < Test::Unit::TestCase

  def test_sum_beetwen_zeroes
    assert_equal(12, ArrayUtils.sum_beetwen_zeroes([2, 3, 0, 5, 7, 0, 1, 5, 0, 3]) )
  end

  def test_sort_odd_even
    assert_equal([0, 0, 0, 1, 2, 3, 3, 5, 5, 7], ArrayUtils.sort_odd_even([2, 3, 0, 5, 7, 0, 1, 5, 0, 3]) )
  end

  def test_sort
    assert_equal([0, 0, 0, 1, 2, 3, 3, 5, 5, 7], ArrayUtils.sort_odd_even([2, 3, 0, 5, 7, 0, 1, 5, 0, 3]) )
  end

  def test_reverse_array
    assert_equal([3, 0, 5, 1, 0, 7, 5, 0, 3, 2], ArrayUtils.reverse_array([2, 3, 0, 5, 7, 0, 1, 5, 0, 3]) )
  end

  def test_reverse
    assert_equal([3, 0, 5, 1, 0, 7, 5, 0, 3, 2], ArrayUtils.reverse([2, 3, 0, 5, 7, 0, 1, 5, 0, 3]) )
    assert_equal([], ArrayUtils.reverse([]) )
  end

end
