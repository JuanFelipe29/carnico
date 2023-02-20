class CreateElaboratedProductNames < ActiveRecord::Migration[7.0]
  def change
    create_table :elaborated_product_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
