class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer_name
      t.integer :rating
      t.text :body
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
