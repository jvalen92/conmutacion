class CreateTemperatures < ActiveRecord::Migration[5.1]
  def change
    create_table :temperatures do |t|
      t.string :value
      t.string :description

      t.timestamps
    end
  end
end
