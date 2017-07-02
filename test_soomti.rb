
require('nokogiri')
require('open-uri')
require('request_client')
require 'json'

    url = "https://www.youtube.com/results?q=%EC%99%B8%EB%B0%B0%EC%97%BD&sp=SADqAwA%253D"
    result = Nokogiri::HTML(open(url))
    result = Json.parse(RestClient.get(uri))
    result.encoding = 'utf-8'
    
    result = result.css("div#results ol.item-section li div a")
    
    puts "결과"
    result.each do |p|
        img = p.css('img')
        if(p.attr('href').include?('watch'))
            puts p.attr('href')
            puts img.attr('src')
            puts 
        end
    end