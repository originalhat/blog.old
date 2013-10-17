class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :title,  :null => false
      t.datetime :posted, :null => false, :default => Time.now
      t.string   :author, :null => false
      t.text     :body,   :null => false

      t.timestamps
    end
  end
end
