class Daily < ActiveRecord::Base

    belongs_to :user
    has_many :health
    
end
