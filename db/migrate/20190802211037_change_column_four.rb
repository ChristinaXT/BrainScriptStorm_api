class ChangeColumnFour < ActiveRecord::Migration[5.2]
  def change
    change_column :inciting_incidents, :description, :text
  end
end
