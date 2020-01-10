# since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)
class Puppy
  attr_accessor :name , :breed, :age
  def initialize(hash)
    @name = hash[:name]
    @breed = hash[:breed]
    @age = hash[:age]
  end
end
