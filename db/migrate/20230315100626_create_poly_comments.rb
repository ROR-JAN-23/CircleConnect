class CreatePolyComments < ActiveRecord::Migration[7.0]
  def change
    create_table :poly_comments do |t|
      t.text :content
      t.references :commentable, polymorphic: true, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
