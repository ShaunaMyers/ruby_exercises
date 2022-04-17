class Centaur
  attr_reader :name, :breed, :cranky, :standing, :activities, :laying
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @activities = 0
  end

  def shoot
    return 'NO!' if cranky || laying
    @activities += 1
    @cranky = true if activities > 2
    'Twang!!!'
  end

  def run
    return 'NO!' if laying
    @activities += 1
    @cranky = true if activities > 2
    'Clop clop clop clop!'
  end

  def cranky?
    cranky
  end

  def standing?
    standing
  end

  def laying?
    laying
  end

  def sleep
    return 'NO!' if standing
    self.rested
    'ZZZ zzz ZZZ zzz'
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    return 'NO!' if laying
    return 'I am so sick. I should not have drank that!' if !cranky
    self.rested
  end

  def rested
    @cranky = false
    @activities = 0
  end

end
