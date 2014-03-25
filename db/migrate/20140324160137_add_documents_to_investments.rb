class AddDocumentsToInvestments < ActiveRecord::Migration
  def up
    add_column :investments, :documents, :string
  end

  def down
    remove_column :investments, :documents, :string
  end
end
