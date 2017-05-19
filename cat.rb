class Meow

  def initialize(name, preferred_food,meal_time)
    @name           = name
    @preferred_food = preferred_food
    @meal_time      = meal_time
  end

    def eats_at
      if @meal_time >=1 && @meal_time <=11
       "#{@meal_time} AM"
     elsif @meal_time > 12
      "#{@meal_time -12} PM"
    elsif @meal_time == 0
      "12 AM"
      else
      "12 PM"
      end
    end

    def meow
      "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
    end
end

sparkles = Meow.new("Sparkles","mice",12)
mittens2 = Meow.new("Mittens2","tuna",0)
yuki = Meow.new("Yuki","mice",13)
mittens = Meow.new("Mittens","tuna",18)

puts yuki.eats_at
puts mittens.eats_at
puts sparkles.eats_at
puts mittens2.eats_at

puts yuki.meow
puts mittens.meow
puts sparkles.meow
puts mittens2.meow
