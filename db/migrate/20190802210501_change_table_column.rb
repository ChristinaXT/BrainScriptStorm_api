class ChangeTableColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :epoches, :time_period, :text
  end
end
