class DropUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :user
  end
end
