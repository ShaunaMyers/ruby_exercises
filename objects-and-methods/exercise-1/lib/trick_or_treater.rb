class TrickOrTreater
  attr_reader :dressed_up_as, :bag
  def initialize(dressed_up_as)
    @dressed_up_as = dressed_up_as.style
    @bag = []
  end

  def has_candy?
    return true if bag.length > 0
    false
  end

  def candy_count
    bag.count
  end

  def eat
    bag.pop
  end
end
