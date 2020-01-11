# since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)
class Puppy
  attr_accessor :name, :breed, :age

  @@puppies = []

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    save
  end

  def self.all
    @@puppies
  end

  def save
    @@puppies << self
  end
end
