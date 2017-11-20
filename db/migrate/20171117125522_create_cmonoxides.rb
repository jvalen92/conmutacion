class CreateCmonoxides < ActiveRecord::Migration[5.1]
  def change
    create_table :cmonoxides do |t|
      t.string :value
      t.string :description

      t.timestamps
    end
  end
end
