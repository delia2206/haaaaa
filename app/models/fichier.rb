class Fichier < ActiveRecord::Base
	belongs_to :utilisateur
	belongs_to :categorie
	has_many :sous_categories
end
