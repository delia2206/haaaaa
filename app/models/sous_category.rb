class SousCategory < ActiveRecord::Base
  belongs_to :fichier
  belongs_to :category
end
