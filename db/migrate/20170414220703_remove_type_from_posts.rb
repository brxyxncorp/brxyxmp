class RemoveTypeFromPosts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :posts, :type, :string
  end
end
