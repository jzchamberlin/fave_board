class List < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :board_id }
  validates :board_id, :presence => true

  belongs_to :board, :class_name => "Board", :foreign_key => "board_id"

  has_many :cards, :class_name => "Card", :foreign_key => "list_id", :dependent => :destroy
end
