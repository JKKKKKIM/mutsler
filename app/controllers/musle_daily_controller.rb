class MusleDailyController < ApplicationController
    before_action :authenticate_user!
end


def upload
    
        pic = params[:pic]
        uploader =HahaUploader.new
        uploader.stroe!(pic)
        
        redirect_to '/musle_daily/daily_write'
end