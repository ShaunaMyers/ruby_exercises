class Werewolf
  attr_reader :name, :location, :human, :hungry, :victims
  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hungry = false
    @victims = []
  end

  def human?
    human
  end

  def wolf?
    !human
  end

  def change!
    @human = !human
    if !human
      @hungry = true
    else
      @hungry = false
    end
  end

  def consume(victim)
    if !human
      victim.status = :dead
      victims.push(victim)
      @hungry = false
    end
  end
end
