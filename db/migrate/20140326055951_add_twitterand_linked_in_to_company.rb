class AddTwitterandLinkedInToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :twitter, :string
    add_column :companies, :linkedin, :string
  end
end
