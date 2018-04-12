# methode to get the email address from the website of Vaureal townhall

require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_the_email_of_a_townhal_from_its_webpage

  page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/vaureal.html'))
  mail = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text

  puts mail
end

get_the_email_of_a_townhal_from_its_webpage()

# methode to get the URLs from the French townhall directory
def get_all_the_urls_of_val_doise_townhalls

    url = 'http://annuaire-des-mairies.com/95/'
    page = Nokogiri::HTML(open(url))
    links = page.css('body > pre > a')
    links.each do |link|
      puts url + link['href']
    end
end

get_all_the_urls_of_val_doise_townhalls()
