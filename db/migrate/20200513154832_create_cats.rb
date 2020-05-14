class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :species
      t.integer :age
      t.string :name, null: false
    end
  end
end
