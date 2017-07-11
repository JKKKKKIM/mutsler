class MuscleCommonController < ApplicationController
    
    
 def index
 end
    
 def new
    #사용자가 데이터를 입력할 화면
 end
    
 def user_profile

    params.require(:user_profile).permit(:photo)

 end




    
end
