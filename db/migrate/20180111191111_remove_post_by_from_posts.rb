class RemovePostByFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :post_by, :string
  end
end
