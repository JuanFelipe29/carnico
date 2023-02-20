class CreateChannels < ActiveRecord::Migration[7.0]
  def change
    create_table :channels do |t|
      t.string :income_type
      t.references :family, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true
      t.text :description
      t.string :crotal
      t.string :lot
      t.integer :weight
      t.string :temperature
      t.integer :cost
      t.integer :total
      t.date :slaughter
      t.date :birth
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
