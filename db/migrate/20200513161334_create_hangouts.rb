class CreateHangouts < ActiveRecord::Migration[6.0]
  def change
    create_table :hangouts do |t|
      t.references :cat, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.integer :frequency
    end
  end
end