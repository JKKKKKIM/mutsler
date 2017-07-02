require('nokogiri')
require('open-uri')

class MusleVideoController < ApplicationController
    # before_action :authenticate_user!
    def test 
    end
    def list
        url = "https://www.youtube.com/results?search_query=%EC%99%B8%EB%B0%B0%EC%97%BD"
        result = Nokogiri::HTML(open(url))
        result = result.css("div#results ol.item-section")
        puts result
    end
    def detail
    end
    def update
    end
    def create
    end
end
