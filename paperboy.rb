class Paperboy

def initialize(name)
  @name = name
  @experience = 0
  @earnings = 0
  @quota = 50
end

#Reader
def name
  return @name
end

def experience
  return @experience
end

def earnings
  return @earnings
end

def quota
  @quota
end
#Writer
def name=(name)
  @name = name
end

def experience=(experience)
  @experience = experience
end

def quota=(quota)
  @quota = quota
end

#Methods

def new_quota()
 @quota += (@experience * 0.5)
end

def deliver(start_address, end_address)
  @experience += (end_address - start_address + 1)
  if @experience > @quota
    @earnings += (@experience - @quota) * 0.50
    @earnings += @quota * 0.25
    self.new_quota
  elsif @experience < @quota
    @earnings += @experience * 0.25
    @earnings -= 2.00
    self.new_quota
  elsif @experience == @quota
    @earnings += @experience * 0.25
    self.new_quota
  end
end

def report
  puts "I'm #{self.name}, I've delivered 100 papers #{self.experience} and I've earned #{self.earnings} so far!"
end

end
#
tommy = Paperboy.new("Tommy")
tommy.deliver(1, 100)
puts tommy.experience
puts tommy.earnings
puts tommy.quota

tommy.report
