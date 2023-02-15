class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.string :color, null: false
      t.string :temperature, null: false
      t.string :taste, null: false
      t.string :trait, null: false
      t.timestamps
    end
  end
end
