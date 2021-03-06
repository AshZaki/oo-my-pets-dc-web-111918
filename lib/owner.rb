require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  
  OWNER = []
  def initialize(species)
    @species = species
    @pets = {:fishes => [],:cats => [],:dogs => []}
    OWNER << self
  end  
  
  def self.all
    OWNER
  end
  
  def self.count
    OWNER.count
  end
  
  def self.reset_all
    OWNER.clear
  end
  
  def say_species
     "I am a #{species}."
  end
  
  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end
  
  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end
  
  def walk_dogs
    @pets[:dogs].map do |dog|
        dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].map do |cat|
        cat.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].map do |fish|
        fish.mood = "happy"
    end
  end
  
  def sell_pets
    self.pets.each do |species, animals|
     animals.each do |animal|
       animal.mood = "nervous"
     end
     animals.clear
    end
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end