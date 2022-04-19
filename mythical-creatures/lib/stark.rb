class Stark
  attr_reader :name, :location, :house_words, :is_safe
  attr_writer :is_safe
  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @house_words = 'Winter is Coming'
    @is_safe = false
  end

  def safe?
    is_safe
  end
end
