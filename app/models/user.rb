class User < ActiveRecord::Base
  
  acts_as_follower     
  
  
  rolify
  include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
   
         
  after_create :set_default_role, if: Proc.new { User.count > 1 }

  private
  
  def set_default_role
    add_role :user
  end
  
  def self.find_for_facebook_oauth(auth)
    user = where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
    end
    # 이 때는 이상하게도 after_create 콜백이 호출되지 않아서 아래와 같은 조치를 했다.
    user.add_role :user if user.roles.empty?
    user   # 최종 반환값은 user 객체이어야 한다.
  end
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  
  has_many :dailies
  has_many :videos , through: :like_posts
  has_many :video_likes
  mount_uploader :avatar, AvatarUploader
  
    
  #has_many :posts, dependent: :destroy
end
