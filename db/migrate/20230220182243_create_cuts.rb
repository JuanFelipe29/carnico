class CreateCuts < ActiveRecord::Migration[7.0]
  def change
    create_table :cuts do |t|
      t.references :piece, null: false, foreign_key: true
      t.references :cut_name, null: false, foreign_key: true
      t.integer :weight
      t.integer :final_weight
      t.string :processing_type

      t.timestamps
    end
  end
end
