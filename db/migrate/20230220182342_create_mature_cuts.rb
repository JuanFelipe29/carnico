class CreateMatureCuts < ActiveRecord::Migration[7.0]
  def change
    create_table :mature_cuts do |t|
      t.references :cut, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :final_weight

      t.timestamps
    end
  end
end
