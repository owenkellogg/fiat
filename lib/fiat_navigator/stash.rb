class FiatNavigator::Stash
  attr_reader :unit, :amount, :money

  def initialize amount, money, unit = :ounces
    @unit = unit
    @amount = (sprintf '%.4f', amount).to_f
    @money = money
	end

  def to_s
    "#{sprintf '%.4f', amount} #{unit.to_s} #{money}"
  end  
end 
