class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    if statues.length == 3
      statues[0].stone = false
      statues.shift
    end

    person.stone = true
    statues.push(person)
  end

end
