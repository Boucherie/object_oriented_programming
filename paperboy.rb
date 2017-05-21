class Paperboy

attr_reader :earnings
attr_accessor  :name, :experience

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    amount = @experience / 2 + 50
  end

  def deliver(start_address, end_address)
    route = end_address - start_address + 1
    daily_pay = 0
    if route > quota
      daily_pay += 0.25 * quota + 0.5 * (route - quota)
    elsif route < @quota
      @earnings = @quota * 0.25 - 2
        "Quota not met- #{quota - route} remaining for this delivery."
    end
  # if start_address > end_address
  #   route = start_address - end_address + 1
  #   end
  @experience += route
  @earnings += daily_pay
  "$#{daily_pay.to_f} made on this delivery."
  end
end



tommy = Paperboy.new("Tommy")

puts tommy.quota

puts tommy.deliver(250, 172)
