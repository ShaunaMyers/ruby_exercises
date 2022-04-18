class Human
  attr_reader :name, :encounter_counter, :notices_ogre, :knocked_out
  attr_writer :encounter_counter, :knocked_out
  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @notices_ogre = false
    @knocked_out = false
  end

  def notices_ogre?
    @notices_ogre = true if encounter_counter % 3 == 0
    notices_ogre
  end

  def knocked_out?
    knocked_out
  end

end
