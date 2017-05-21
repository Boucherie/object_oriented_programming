class Paperboy

attr_reader :earnings
attr_accessor  :name, :experience

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def quota
    amount = @experience / 2 + 50

  end

  def deliver(start_address, end_address)
    daily_pay = 0
    route = end_address - start_address + 1
    if start_address > end_address
      route = start_address - end_address + 1
    end

    if route > quota
      daily_pay += 0.25 * quota + 0.50 * (route - quota)
    elsif route < quota
      daily_pay = quota * 0.25 - 2.00
      "Quota not met- #{quota - route} remaining for this delivery."
    end

  @experience += route
  @earnings += daily_pay
  "$#{daily_pay.to_f} made on this delivery, #{quota}."
  
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end
end



tommy = Paperboy.new("Tommy")

3.times do |num|
  puts tommy.quota
end

3.times do |deliveries|
  puts tommy.deliver(101, 1)
end

puts tommy.report
