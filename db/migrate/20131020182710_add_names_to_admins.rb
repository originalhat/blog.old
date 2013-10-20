class AddNamesToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :first_name, :string
    add_column :admins, :last_name,  :string

    # db = Admin.find_by(email: 'devin.g.brown@gmail.com')
    # db[:first_name] = "Devin"
    # db[:last_name]  = "Brown"

    # eg = Admin.find_by(email: 'elijah.gartin@gmail.com')
    # eg[:first_name] = "Elijah"
    # eg[:last_name]  = "Gartin"
  end
end
