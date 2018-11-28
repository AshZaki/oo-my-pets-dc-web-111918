class Cat
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  
  # attr_accessor :mood, :owner
  # attr_reader :name
  
  # @@all = []
  
  # def initialize(name, owner= nil)
  #   @name = name
  #   @owner = owner
  #   @mood = "nervous"
  #   @@all << self
  # end
  
  # def eat_nearby_fish
  #   # if owner has at least one fish
  #   # then eat fish
  #   # mood is set to happy
  #   # fish instance destroyed
  #   # the fish @@all array should not have it anymore
  # end
  
end