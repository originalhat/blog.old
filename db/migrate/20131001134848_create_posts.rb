class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string     :title
      t.datetime   :posted, :default => Time.now
      t.string     :author
      t.text       :body

      t.timestamps
    end
  end
end
