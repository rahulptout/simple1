class ChangeUsers < ActiveRecord::Migration[7.0]
  # def up
  #   rename_table("users","admin_users")
  #   add_column("admin_users","username",:string,:limit => 25,:after=>"email")
  #   change_column("admin_users","email",:string,:limit => 30)
  #   rename_column("admin_users","password","hashed_password")
  #   add_index("admin_users","username")
  #
  # end
  #
  # def down
  #   remove_index("admin_users","username")
  #
  # end
end
