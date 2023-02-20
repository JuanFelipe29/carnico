class CreateQuarterings < ActiveRecord::Migration[7.0]
  def change
    create_table :quarterings do |t|
      t.references :channel, null: false, foreign_key: true
      t.string :lot
      t.datetime :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
