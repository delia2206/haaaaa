class Categorie < ActiveRecord::Base
	has_one :fichier
	has_many :sous_categories
end
