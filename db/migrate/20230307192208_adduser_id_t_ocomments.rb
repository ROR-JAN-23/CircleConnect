class AdduserIdTOcomments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :parent_id, :integer
    add_column :comments, :post_id, :integer
    add_column :comments, :user_id, :integer
    add_column :comments, :comment, :text ,null: false
    add_index :comments, :parent_id
  end
end
