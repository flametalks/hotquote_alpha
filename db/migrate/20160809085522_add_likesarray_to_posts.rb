class AddLikesarrayToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :likesarray, :text
  end
end
