class AddUserToFichier < ActiveRecord::Migration
  def change
    add_reference :fichiers, :user, index: true, foreign_key: true
  end
end
