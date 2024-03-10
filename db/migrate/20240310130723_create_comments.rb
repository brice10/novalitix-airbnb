class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :text
      t.string :ip
      t.references :housing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
