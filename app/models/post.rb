class Post < ActiveRecord::Base
  validates :title,  :presence => { message: "is a required field" }
  validates :author, :presence => { message: "is a required field" }
  validates :body,   :presence => { message: "is a required field" }
end
