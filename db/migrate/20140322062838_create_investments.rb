class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.float :amt_invested
      t.string :inv_type
      t.string :capitalization
      t.string :funding_round
      t.date :investmt_date
      t.date :maturity
      t.string :conversion_trigger

      t.timestamps
    end
  end
end
