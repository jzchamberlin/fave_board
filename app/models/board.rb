class Board < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :user
  
  has_many :lists, :class_name => "List", :foreign_key => "board_id", :dependent => :destroy
end
