class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :home_adress, :home_address
  end
end
