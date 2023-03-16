class AddbioTOusers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :bio, :text, default: ''
  end
end
