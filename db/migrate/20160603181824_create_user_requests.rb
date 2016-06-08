class CreateUserRequests < ActiveRecord::Migration
  def change
    create_table :user_requests do |t|
      t.integer :send_id
      t.integer :receiver_id

      t.timestamps

    end
  end
end
