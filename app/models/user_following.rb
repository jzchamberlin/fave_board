class UserFollowing < ActiveRecord::Base
  belongs_to :following , :class_name => "User", :foreign_key => "following_id"

  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
  

end
