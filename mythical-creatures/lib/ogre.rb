class Ogre
  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    @encounter_counter += 1
    self.swing_at(human) if encounter_counter % 3 == 0
    human.knocked_out = true if encounter_counter % 6 == 0
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.knocked_out = false
  end
end
