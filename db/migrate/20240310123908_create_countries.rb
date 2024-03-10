class CreateCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :countries do |t|
      t.string :name, comment: "nom du pays"
      t.string :code, comment: "code pays"

      t.timestamps
    end
  end
end
