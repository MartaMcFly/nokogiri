require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_cours_cryptomonnaies
url = 'https://coinmarketcap.com/all/views/all/'
  page = Nokogiri::HTML(open(url))
name = page.css('a.currency-name-container').map{ |x| x.text}
price = page.css('a.price').map{ |x| x.text}

companies_and_values = []
for n in (0..name.length) do
  company_and_name = Hash.new
  company_and_name["company"]=name[n]
  company_and_name["value"]=price[n]
  companies_and_values.push(company_and_name)
end

print companies_and_values

end

get_cours_cryptomonnaies
