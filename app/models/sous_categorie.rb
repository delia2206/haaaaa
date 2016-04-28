class SousCategorie < ActiveRecord::Base
	belongs_to :categorie
	belongs_to :fichier
end
