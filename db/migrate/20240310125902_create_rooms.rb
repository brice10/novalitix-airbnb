class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.string :type
      t.text :description
      t.json :data
      t.references :housing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
