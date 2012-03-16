class FiatNavigator
	DOLLARS_PER_OUNCE_GOLD = 1661.50
  @@previous_translations = []

  def self.translate_to_gold amount, fiat_money
		ounces = amount / DOLLARS_PER_OUNCE_GOLD
	  stash = Stash.new ounces, :gold, :ounces
		@@previous_translations << "#{amount} #{fiat_money} translates to #{stash.to_s}" 

    stash
  end

	def self.do_business_with_the_federal_reserve
	  "Error: Hopefully this tool will not be used to facilitate such disappointing behavior."	
	end 

  def self.previous_translation
    @@previous_translations.first
  end  
  
  def self.all_previous_translations
    @@previous_translations
  end 
end

require 'fiat_navigator/stash.rb'
