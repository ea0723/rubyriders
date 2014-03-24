class AddDataToInvestment < ActiveRecord::Migration
  def up
    add_column :investments, :investor, :hstore #user to whom investment belongs
    #add_column :investments, :invest_into, :hstore #company into which investor is investing
  end

  def down
    remove_column :investments, :investor
    #remove_column :investments, :invest_into
  end

end
