class CreateGivenCircumstances < ActiveRecord::Migration[5.2]
  def change
    create_table :given_circumstances do |t|
      t.string :character_background

      t.timestamps
    end
  end
end
