class ActivateUuid < ActiveRecord::Migration
  def up
    execute "CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\""
  end

  def down
    execute "DROP EXTENSION \"uuid-ossp\""
  end
end