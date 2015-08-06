class CreateSkinProfiles < ActiveRecord::Migration
  def change
    create_table :skin_profiles do |t|
      t.references :skin_concern, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
