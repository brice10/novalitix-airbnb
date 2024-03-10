class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :label
      t.references :housing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
