class Hobbit
  attr_reader :name, :disposition, :age
  attr_writer :age
  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    self.age += 1
  end

  def adult?
    return false if age < 33
    true
  end

  def old?
    return true if age == 101
    false
  end

  def has_ring?
    return true if name == "Frodo"
    false
  end

  def is_short?
    true
  end

end
