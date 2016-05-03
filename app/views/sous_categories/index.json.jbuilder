json.array!(@sous_categories) do |sous_category|
  json.extract! sous_category, :id, :name, :fichier_id, :categorie_id
  json.url sous_category_url(sous_category, format: :json)
end
