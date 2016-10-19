class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    array.length
  end

  def reverse
    array.reverse
  end

  def max
    array.max
  end

  def min
    array.min
  end

  def desc
    array.sort! do |first, second|
      second <=> first
    end
  end

  def asc
    array.sort
  end

  def odd
    array.find_all { |elem| (elem % 2).nonzero? }
  end

  def multiple_to_three
    array.find_all { |elem| (elem % 3).zero? }
  end

  def uniq
    array.uniq
  end

  def devide_on_ten
    array.map { |elem| elem.to_f / 10 }
  end

  def chars
    array.collect { |i| ('a'...'z').to_a[i - 1].to_sym }
  end

  def switch
    min_arr = array.min
    array.map! do |element|
      if element == min_arr
        array.max
      elsif element == array.max
        min_arr
      else
        element
      end
    end
  end

  def before_min
    array[0...array.index(array.min)]
  end

  def three_smallest
    array.sort[0..2]
  end
end
