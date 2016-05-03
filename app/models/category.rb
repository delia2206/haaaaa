class Category < ActiveRecord::Base
  has_many :fichier
  has_many :sous_category
end
