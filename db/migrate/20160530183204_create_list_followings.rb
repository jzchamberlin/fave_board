class CreateListFollowings < ActiveRecord::Migration
  def change
    create_table :list_followings do |t|
      t.integer :user_id
      t.integer :board_id
      t.integer :list_id

      t.timestamps

    end
  end
end
