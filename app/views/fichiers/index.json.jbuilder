json.array!(@fichiers) do |fichier|
  json.extract! fichier, :id, :nom
  json.url fichier_url(fichier, format: :json)
end
