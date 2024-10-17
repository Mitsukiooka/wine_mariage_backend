class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.bigint :wine_id, null: false
      t.bigint :user_id, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
