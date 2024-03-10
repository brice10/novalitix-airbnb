class CreateHousings < ActiveRecord::Migration[7.1]
  def change
    create_table :housings do |t|
      t.string :name
      t.integer :area
      t.string :type
      t.float :amount, :limit => 53, :null => true
      t.integer :star
      t.references :country, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.json :data
      
      t.timestamps
    end
  end
end
