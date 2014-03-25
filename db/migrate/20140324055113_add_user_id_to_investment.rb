class AddUserIdToInvestment < ActiveRecord::Migration
  def change
    add_column :investments, :user_id, :integer
  end

  def down
    remove_column :investments, :user_id, :integer
  end
end
