require('nokogiri')
require('open-uri')
require('rest-client')
    url = "https://www.youtube.com/results?q=%EC%99%B8%EB%B0%B0%EC%97%BD&sp=SADqAwA%253D"
    result = Nokogiri::HTML(RestClient.get(url))
    
    result.encoding = 'utf-8'
    
    result = result.css("div#results ol.item-section li div")
    puts "결과"
    result.each do |p|
        puts
        if(p.attr('href').include?('watch'))
            puts p
            puts p
        end
  
    end