class CreateFormulas < ActiveRecord::Migration
  def change
    create_table :formulas do |t|
    	t.integer :ingredient_id
    	t.integer :product_id
    	t.references :product
    	t.references :ingredient
      t.timestamps null: false
    end
  end
end
