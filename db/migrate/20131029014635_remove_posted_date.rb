class RemovePostedDate < ActiveRecord::Migration
  def change
    remove_column :posts, :posted
  end
end
