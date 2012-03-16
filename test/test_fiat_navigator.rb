require 'minitest/autorun'
require 'fiat_navigator.rb'

class TestFiatNavigator < MiniTest::Unit::TestCase
	def test_translate_to_gold_from_dollars
		gold = FiatNavigator.translate_to_gold 500, :dollars 
		assert_equal "0.3009 ounces gold", gold.to_s
		assert_equal :ounces, gold.unit
		assert_equal 0.3009, gold.amount
	end 
end 
