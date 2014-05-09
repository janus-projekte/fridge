module Fridge
  
  def self.freezer
    @@freezer ||= CoolingUnit.new(5)
  end
  
  def self.froster
    @@froster ||= CoolingUnit.new(-10)
  end
  
  class CoolingUnit
    
    attr_reader :door, :light, :content, :temp
    
    def initialize temp
      @door = :closed
      @light = :on
      @content = []
      @temp = temp
    end
    
    def open_door
      raise StandardError.new("Idiot! My door is already open! Has somebody forgotten to close it, hm?") if @door == :open
      @door = :open
      @light = :on
    end
    
    def close_door
      raise StandardError.new("Gosh - how would you do that on an already closed door?") if @door == :closed
      @door = :closed
      @light = :off
    end
    
  end
    
end

puts Fridge.new.inspect
