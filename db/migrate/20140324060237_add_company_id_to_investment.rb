class AddCompanyIdToInvestment < ActiveRecord::Migration
  def change
    add_column :investments, :company_id, :integer
  end

  def down
    remove_column :investments, :company_id, :integer
  end
end
