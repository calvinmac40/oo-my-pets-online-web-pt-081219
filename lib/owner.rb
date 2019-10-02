class Owner
  attr_reader :name, :owner, :species
  
  @@all = []
  @@count = 0
  @@reset_all = []
  
  def initialize(name)
    @name = name
    @owner = owner
    @species = "human"
    @@all << self
  end
  
  def say_species
    @say_species = "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length {|num| num }
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  
  def dogs 
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
end