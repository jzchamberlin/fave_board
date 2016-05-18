class Card < ActiveRecord::Base
  validates :name, :presence => true
  validates :list_id, :presence => true

  belongs_to :list, :class_name => "List", :foreign_key => "list_id"
end
