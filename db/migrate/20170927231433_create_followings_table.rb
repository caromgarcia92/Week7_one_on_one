class CreateFollowingsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :followings do |t|
      t.integer :user_id
      t.integer :follower_user_id
    end

      add_index(:followings, [:follower_user_id, :user_id], :unique => true)
  end
end
