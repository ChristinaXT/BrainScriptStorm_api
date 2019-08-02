class CreateEpoches < ActiveRecord::Migration[5.2]
  def change
    create_table :epoches do |t|
      t.string :time_period

      t.timestamps
    end
  end
end
