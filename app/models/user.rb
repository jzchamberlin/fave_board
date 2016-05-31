class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :list_followings , :class_name => "ListFollowing", :foreign_key => "user_id"

has_many :user_followings , :class_name => "UserFollowing", :foreign_key => "following_id"

has_many :user_followings , :class_name => "UserFollowing", :foreign_key => "user_id"

has_many :user_followings , :class_name => "UserFollowing", :foreign_key => "following_id"

has_many :user_followings , :class_name => "UserFollowing", :foreign_key => "user_id"

has_many :board_followings , :class_name => "BoardFollowing", :foreign_key => "user_id"

has_many :boards

end
