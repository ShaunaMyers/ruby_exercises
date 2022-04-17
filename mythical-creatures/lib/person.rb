class Person
  attr_reader :name, :stone
  attr_writer :stone
  def initialize(name)
    @name = name
    @stone = false
  end

  def stoned?
    stone
  end
end
