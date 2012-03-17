require 'minitest/autorun'
require 'fiat_navigator.rb'

class TestFiatNavigator < MiniTest::Unit::TestCase
  def test_translate_to_gold_from_dollars
    gold = FiatNavigator.translate_to_gold 500, :dollars 
    assert_equal "0.3009 ounces gold", gold.to_s
    assert_equal :ounces, gold.unit
    assert_equal 0.3009, gold.amount
  end 

  def test_deal_with_fed
    result = FiatNavigator.do_business_with_the_federal_reserve
    assert_equal "Error: Hopefully this tool will not be used to facilitate such disappointing behavior.", result 
  end 

  def test_previous_translation
    gold = FiatNavigator.translate_to_gold 500, :dollars
    translation = FiatNavigator.previous_translation
    assert_equal "500 dollars translates to 0.3009 ounces gold", translation
  end 

  def test_all_previous_translations
    FiatNavigator.translate_to_gold 500, :dollars
    FiatNavigator.translate_to_gold 1000, :dollars
    translations = FiatNavigator.all_previous_translations
    assert_kind_of Array, translations
    assert_equal "1000 dollars translates to 0.6019 ounces gold", translations[1]
    assert_equal "500 dollars translates to 0.3009 ounces gold", translations[0]
  end 
end 
