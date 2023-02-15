class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :name, null: false
      t.string :kind, null: false
      t.string :country, null: false
      t.string :maker, null: false
      t.string :color, null: false
      t.string :body, null: false
      t.string :aroma, null: false
      t.string :score, null: false
      t.timestamps
    end
  end
end
