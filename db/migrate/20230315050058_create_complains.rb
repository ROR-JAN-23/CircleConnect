class CreateComplains < ActiveRecord::Migration[7.0]
  def change
    create_table :complains do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :post_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
