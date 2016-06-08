class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :username, :uniqueness => true

has_many :user_requests_where_sender, :class_name => "UserRequest", :foreign_key => "sender_id"

has_many :user_requests_where_receiver, :class_name => "UserRequest", :foreign_key => "receiver_id"

has_many :user_requests_where_sender, :class_name => "UserRequest", :foreign_key => "sender_id"

has_many :users_where_sender, :through => :user_requests_where_sender, :source => :receiver

has_many :user_requests_where_receiver, :class_name => "UserRequest", :foreign_key => "receiver_id"

has_many :users_where_receiver, :through => :user_requests_where_receiver, :source => :sender




has_many :list_followings , :class_name => "ListFollowing", :foreign_key => "user_id"

has_many :user_followings , :class_name => "UserFollowing", :foreign_key => "following_id"

has_many :user_followings , :class_name => "UserFollowing", :foreign_key => "user_id"

has_many :user_followings , :class_name => "UserFollowing", :foreign_key => "following_id"

has_many :user_followings , :class_name => "UserFollowing", :foreign_key => "user_id"

has_many :board_followings , :class_name => "BoardFollowing", :foreign_key => "user_id"

has_many :boards

end
