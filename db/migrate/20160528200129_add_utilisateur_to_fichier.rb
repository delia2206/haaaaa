class AddUtilisateurToFichier < ActiveRecord::Migration
  def change
    add_reference :fichiers, :utilisateur, index: true, foreign_key: true
  end
end
