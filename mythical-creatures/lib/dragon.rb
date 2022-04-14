class Dragon
  attr_reader :name, :color, :rider, :hungry
  attr_accessor :hungry
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = 0
  end

  def hungry?
    return true if hungry < 3
    false
  end

  def eat
    self.hungry += 1
  end
end
