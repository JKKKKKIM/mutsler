class User < ActiveRecord::Base
 # rolify
  include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :dailies
  has_many :videos
  has_many :video_likes
  
    
  #has_many :posts, dependent: :destroy
end