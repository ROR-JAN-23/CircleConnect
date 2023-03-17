class AddColumnToFollow < ActiveRecord::Migration[7.0]
  def change
    add_reference :follows, :user, null: false, foreign_key: true
    remove_column :follows, :followed_user_id, :integer
  end
end
