class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect
  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if home == stark.location && starks_to_protect.length < 2
      stark.is_safe = true
      starks_to_protect.push(stark)
    end
  end

  def hunts_white_walkers?
    return true if starks_to_protect.length == 0
    false
  end

  def leaves(stark)
    starks_to_protect.delete(stark)
    stark.is_safe = false
    stark
  end

end
