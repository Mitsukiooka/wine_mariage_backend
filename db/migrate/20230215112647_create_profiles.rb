class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.bigint :user_id, null: false
      t.string :name, null: false
      t.string :favorite_kind, null: false
      t.string :total_number, null: false
      t.timestamps
    end
  end
end
