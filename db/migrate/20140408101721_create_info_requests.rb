class CreateInfoRequests < ActiveRecord::Migration
  def change
    create_table :info_requests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
