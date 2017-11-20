class CreateHumidities < ActiveRecord::Migration[5.1]
  def change
    create_table :humidities do |t|
      t.string :value
      t.string :description

      t.timestamps
    end
  end
end
