class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    return true if candies.length == 0
    false
  end

  def count
    candies.length
  end

  def <<(candy)
    candies.push(candy)
  end

  def contains?(type)
    candies.each { |candy| return true if candy.type == type }
    false
  end
end
