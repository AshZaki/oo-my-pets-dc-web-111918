class Fish
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  
  # attr_accessor :mood, :owner
  # attr_reader :name
  
  # @@all = []
  
  # def initialize(name, owner)
  #   @name = name
  #   @mood = "nervous"
  #   @owner = owner
  #   @@all << self
  # end
end