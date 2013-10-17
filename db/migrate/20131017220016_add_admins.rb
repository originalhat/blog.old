class AddAdmins < ActiveRecord::Migration
  def self.up
    Admin.create!(email: 'devin.g.brown@gmail.com', password: 'brownlog', password_confirmation: 'brownlog')
    Admin.create!(email: 'elijah.gartin@gmail.com', password: 'geepayne', password_confirmation: 'geepayne')
  end

  def self.down
    Admin.find_by(email: 'devin.g.brown@gmail.com').destroy
    Admin.find_by(email: 'elijah.gartin@gmail.com').destroy
  end
end
