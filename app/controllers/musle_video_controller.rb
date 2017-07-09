require('nokogiri')
require('open-uri')

class MusleVideoController < ApplicationController
    before_action :authenticate_user!
    def test 
    end
    def list
        
        @post = Video.all

    end
    def detail
    
        @post = Video.find(params[:id])
        
        @p = "test"
        
    end
    def update
    end
    def create
    end
end
