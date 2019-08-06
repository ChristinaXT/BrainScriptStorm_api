class ChangeTableColumnThree < ActiveRecord::Migration[5.2]
  def change
    change_column :given_circumstances, :character_background, :text
  end
end
