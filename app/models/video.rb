class Video < ActiveRecord::Base
    acts_as_followable
    has_many :user, through: :like_posts
    has_many :VideoReply
end
