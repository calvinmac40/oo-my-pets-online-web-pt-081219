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
  
  def buy_cat(name)
    Cat.new(name,self)
  end
  
  def buy_dog(name)
    Dog.new(name,self)
  end
  
  def walk_dogs
    Dog.all.select do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    Cat.all.select do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    Dog.all.select do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    Cat.all.select do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end