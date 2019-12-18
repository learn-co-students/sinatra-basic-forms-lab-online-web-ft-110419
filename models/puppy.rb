class Puppy 
  attr_accessor :name, :breed, :age
  
  def initialize(args)
    args.each{|k,v| self.send("#{k}=",v) }
  end
  
  
  
end