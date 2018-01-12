class RemoveImgurlFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :imgurl, :string
  end
end
