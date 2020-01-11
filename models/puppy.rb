# frozen_string_literal: true

class Puppy
    attr_accessor :name, :breed, :age
    def initialize(args)
        args.each { |key, value| send("#{key}=", value) }
    end
end
