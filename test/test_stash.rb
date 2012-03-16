require 'minitest/autorun'
require 'fiat_navigator/stash.rb'

class TestStash < MiniTest::Unit::TestCase
  def test_new_stash_of_gold
		stash = FiatNavigator::Stash.new 2.5000, :gold, :ounces
		assert_equal stash.unit, :ounces
		assert_equal stash.money, :gold
		assert_equal stash.amount, 2.5
		assert_equal "2.5000 ounces gold", stash.to_s 
	end 
end 
