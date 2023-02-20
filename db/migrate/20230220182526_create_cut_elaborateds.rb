class CreateCutElaborateds < ActiveRecord::Migration[7.0]
  def change
    create_table :cut_elaborateds do |t|
      t.references :cut, null: false, foreign_key: true
      t.references :elaborated_product_name, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
