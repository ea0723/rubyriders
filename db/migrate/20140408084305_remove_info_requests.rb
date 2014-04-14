class RemoveInfoRequests < ActiveRecord::Migration
  def up
    drop_table :info_requests if ActiveRecord::Base.connection.table_exists? :info_requests
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
