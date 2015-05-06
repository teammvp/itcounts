class ChangeUserColName < ActiveRecord::Migration
  def change
    rename_column :users, :token, :password_digest
  end
end
