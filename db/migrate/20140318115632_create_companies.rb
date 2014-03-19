class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :industry
      t.string :size
      t.integer :min_employees
      t.integer :max_employees

      t.timestamps :created_at
      t.timestamps :modified_at
    end
  end
end
