class AddUserIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lego_id, :integer
  end
end
