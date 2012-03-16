We all hate the trickiness of the fiat debt units issued by governments worldwide
and would prefer to undertake transactions using real money. 

Introducing FIAT NAVIGATOR  A simple calculator for translating currency units into weight in silver and gold, and vice versa. 

INSTALLATION
<pre><code>
  git clone git@github.com:stevenzeiler/fiat_navigator.git
  cd fiat_navigator
  gem build fiat_navigator.gemspec
  gem install fiat_navigator
</code></pre>

USAGE

    require 'fiat_navigator'
    => true 

  I want to pay a friend about the value of $500, in gold 

    gold = FiatNavigator.translate_to_gold 500, :dollars 

    puts gold
    => "0.3009 ounces gold"

    puts gold.unit
    => :ounces

    puts gold.amount
    => 0.3009 

  I have gold but I need $500 cash, and must sell some

    dollars = FiatNavigator.translate_to_dollars 0.2, :ounces, :gold  
	
    puts dollars
    => "332.30 dollars" 

    puts dollars.unit
    => :dollars

    puts dollars.amount  
    => 332.30
		
  I have 0.2 ounces gold but I need to move it into the mainstream banking or financial system

    FiatNavigator.do_business_with_the_federal_reserve
    => Error: Hopefully this tool will not be used to facilitate such disappointing behavior. 
 
  I want to review the last full translation

    FiatNavigator.previous_translation
    => "0.2 ounces gold translates to 332.30 dollars"

  Or all transactions from this session
		
    FiatNavigator.all_previous_translations
    => ["0.2 ounces gold translates to 332.30 dollars", "500 dollars translates to 0.3009 ounces gold"]

  The navigator works with real time gold prices from goldmoney.com

    Gold.dollars_per_ounce
    => "$1,653.60" 

    Gold.dollars_per_gram
    => "$53.1636" 
