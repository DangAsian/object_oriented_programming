class Player

  def initialize(gold_coins, health_points, lives)
    @lives = lives
    @health_points = health_points
    @gold_coins = gold_coins
  end

  def lives
    return @lives
  end

  def health_points
    return @health_points
  end

  def gold_coins
    return @gold_coins
  end

  def level_up()
    @lives += 1
  end

  def collect_treasure()
    @gold_coins += 1
    if (@gold_coins % 10) == 0
      level_up()
    end
    return @gold_coins
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
        @lives -= 1
        @health_points = 10
    elsif @lives == 0
      restart()
    end
    return @health_points
  end

  def restart()
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

end

player1 = Player.new(0, 10, 5)

13.times do
  puts player1.do_battle 2
end

# 15.times do
#   puts player1.collect_treasure
# end
#
puts player1.lives
puts player1.health_points
