class FiatNavigator
	DOLLARS_PER_OUNCE_GOLD = 1661.50

  def self.translate_to_gold amount, fiat_money
		ounces = amount / DOLLARS_PER_OUNCE_GOLD
	  Stash.new ounces, :gold, :ounces
  end
end

require 'fiat_navigator/stash.rb'
