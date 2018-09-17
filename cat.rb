class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end



  def name
    return @name
  end

  def preferred_food
    return @preferred_food
  end

  def meal_time
    return @meal_time
  end


  def eats_at()
    if @meal_time == 0
      return "12 AM"
    elsif @meal_time == 12
      return "12 PM"
    elsif @meal_time <= 11
      return "#{@meal_time} AM"
    else
      return "#{@meal_time - 12} PM"

    end
  end

  def meow()
    return "My name is #{name} and i eat #{preferred_food} at #{eats_at}"
  end
end

cat1 = Cat.new("shadow", "mice", 18)
cat2 = Cat.new("autumn", "catnip", 6)


puts cat1.eats_at
