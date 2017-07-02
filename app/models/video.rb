class Video < ActiveRecord::Base
    belongs_to :user,
    has_many :video_likes
end
