class Player

attr_accessor :lives, :gold_coins, :health_points

  def initialize
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  def level_up
    @lives += 1
    "Level #{lives}!"
  end

  def collect_treasure()
    @gold_coins += 1
    if @gold_coins % 10 == 0
    end
      "Coins: #{@gold_coins}"
  end

  def do_battle
    damage = 4
    @health_points -= damage
    if @health_points < 1
      @lives -=1
      @health_points = 10
    end
    "You have #{@health_points} health points left and #{@lives} lives"
  end

  def restart
  end

  chell = Player.new

  15.times do |treasure|
    puts chell.collect_treasure
    # puts chell.lives
  end

  4.times do |fight|
    puts chell.do_battle
  end
end
