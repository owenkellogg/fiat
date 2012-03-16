require 'minitest/autorun'
require 'fiat_navigator/gold.rb'

class TestGold < MiniTest::Unit::TestCase
  def test_price_in_ounces
    price = Gold.dollars_per_ounce
    assert_equal "$1657.60", price
  end 

	def test_price_in_grams
		price = Gold.dollars_per_gram
		assert_equal "$53.2925", price
	end 
end 
