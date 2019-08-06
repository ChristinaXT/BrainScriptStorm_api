class AddCharacterIdToGivenCircumstances < ActiveRecord::Migration[5.2]
  def change
    add_column :given_circumstances, :character_id, :integer
  end
end
