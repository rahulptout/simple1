class CreateLogins < ActiveRecord::Migration[7.0]
  def change
    create_table :logins do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.date   "date_of_birth"
      t.string "password"
      t.timestamps
    end
  end
end
