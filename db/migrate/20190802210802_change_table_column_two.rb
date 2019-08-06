class ChangeTableColumnTwo < ActiveRecord::Migration[5.2]
  def change
    change_column :stories, :synopsis, :text
  end
end
