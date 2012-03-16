require 'nokogiri'
require 'open-uri'

class Gold
  def self.dollars_per_ounce
    doc = Nokogiri::HTML open 'http://www.goldmoney.com'
		price = doc.search("#spot-price-gold-oz").text		
	end 

	def self.dollars_per_gram
    doc = Nokogiri::HTML open 'http://www.goldmoney.com'
    price = doc.search("#spot-price-gold-base").text
	end 
end 
