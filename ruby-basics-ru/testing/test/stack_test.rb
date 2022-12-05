# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def before_setup
    @array = [1, 2, 3, 4, 5]
    @stack = Stack.new(@array)
  end

  def test_pop
    assert(@stack.pop! == 5)
    assert(@stack.to_a == [1, 2, 3, 4])
  end

  def test_push
    @stack.push!('new element')
    assert(@stack.to_a == [1, 2, 3, 4, 5, 'new element'])
  end

  def test_empty
    array = []
    stack = Stack.new(array)
    assert(array.empty? == stack.empty?)
  end

  def test_to_a
    assert(@array == @stack.to_a)
  end

  def test_clear
    assert(@stack.clear! == [])
  end

  def test_size
    assert(@stack.size == @array.size)
  end

  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
