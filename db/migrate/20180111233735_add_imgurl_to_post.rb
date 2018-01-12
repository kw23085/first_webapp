class AddImgurlToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :imgurl, :string
  end
end
