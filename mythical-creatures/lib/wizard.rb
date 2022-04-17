class Wizard
  attr_reader :name, :bearded, :rested, :spells
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spells = 0
  end

  def bearded?
    bearded
  end

  def incantation(str)
    'sudo ' + str
  end

  def rested?
    rested
  end

  def cast
    # increment a "spells" attribute by one
    @spells += 1
    # if spells == 3 then assign rested to false
    if spells == 3
      @rested = false
    end
    "MAGIC MISSILE!"
  end

end
