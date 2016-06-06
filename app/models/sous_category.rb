class SousCategory < ActiveRecord::Base
  belongs_to :fichier
  belongs_to :category

  has_many :fichier_sous_categories
  has_many :fichiers, through: :fichier_sous_categories
end
