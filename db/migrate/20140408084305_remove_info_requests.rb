class CreateInfoRequests < ActiveRecord::Migration
  def up
    drop_table :info_requests
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
