class AddStatusToUser < ActiveRecord::Migration[7.0]
  def change
    execute <<-SQL
    CREATE TYPE user_role AS ENUM ('user', 'manager', 'technician', 'admin', 'non_user');
    SQL
    add_column :users, :user_role, :user_role, default: :user
  end
end
