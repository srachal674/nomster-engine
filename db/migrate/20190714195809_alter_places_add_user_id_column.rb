class AlterPlacesAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_colimn :places, :user_id, :integer
    add_index :plaes, :user_id
  end
end
