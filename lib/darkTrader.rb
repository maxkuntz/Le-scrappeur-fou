
require 'nokogiri'
require 'open-uri'
 

# fonction scraping des noms de crypto qui retourne un array avec tous les noms
def cryptoName
    pageURL = "https://coinmarketcap.com/all/views/all/"
    page = Nokogiri::HTML(URI.open(pageURL))
    crypto_name_array = []
    #recuperation de tous les noms de crypto qu on push dans un array
    page.xpath('//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[2]/div/a[2]').each do |index|
        crypto_name_array.push(index.text)
    end
    return crypto_name_array  
end

# fonction scraping des prix de crypto qui retourne un array avec tous les prix
def cryptoPrice
    pageURL = "https://coinmarketcap.com/all/views/all/"
    page = Nokogiri::HTML(URI.open(pageURL))
    crypto_price_array = []
    #recuperation de tous les prix qu on push dans un array
    page.xpath('//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div/a').each do |index|
        crypto_price_array.push(index.text)
    end
    return crypto_price_array
end



#test puts cryptoName
#test puts cryptoPrice

arrayFinal = cryptoName.zip(cryptoPrice) #fusion des 2 arrays
puts arrayFinal