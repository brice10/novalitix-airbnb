class CreateImages < ActiveRecord::Migration[7.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :imageable_type
      t.bigint :imageable_id

      t.timestamps
    end
  end
end
