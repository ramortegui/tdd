require 'minitest/autorun'
require_relative 'stack'
class TestStack < MiniTest::Test
  def test_sould_push_a_given_item
    stack = Stack.new
    stack.push(2)
    assert_equal  1, stack.size
    assert_equal 2, stack.top
    assert_equal  2, stack.pop
  end
  def test_should_pop_a_given_item
    stack = Stack.new
    stack.push(2)
    result = stack.pop
    assert_equal 2, result, "Getting two"
    assert_equal 0, stack.size, "Size removing two"
  end
end
