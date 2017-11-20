class CreatePmaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :pmaterials do |t|
      t.string :value
      t.string :description

      t.timestamps
    end
  end
end
