class Pirate
  attr_reader :name, :job, :cursed_state, :curses, :booty
  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed_state = false
    @curses = 0
    @booty = 0
  end

  def cursed?
    cursed_state
  end

  def commit_heinous_act
    @curses += 1
    if curses == 3
      @cursed_state = true
    end
  end

  def rob_ships
    @booty += 100
  end

end
