class AddRoleToUtilisateur < ActiveRecord::Migration
  def change
    add_reference :utilisateurs, :role, index: true, foreign_key: true
  end
end
