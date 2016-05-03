class FichierSousCategory < ActiveRecord::Base
  belongs_to :fichier
  belongs_to :sous_category
end
