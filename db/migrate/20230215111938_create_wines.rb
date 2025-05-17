class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_varieties do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :wines do |t|
      t.references :wine_variety, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :kind, null: false
      t.string :country, null: false
      t.string :maker, null: false
      t.timestamps
    end

    create_table :wine_reviews do |t|
      t.references :wine, null: false, foreign_key: true
      t.string :color, null: false
      t.string :body, null: false
      t.string :aroma, null: false
      t.integer :score, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
