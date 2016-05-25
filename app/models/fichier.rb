class Fichier < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :fichier_sous_categories
	has_many :sous_categories, through: :fichier_sous_categories
end
