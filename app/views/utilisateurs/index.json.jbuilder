json.array!(@utilisateurs) do |utilisateur|
  json.extract! utilisateur, :id, :nom, :firstName
  json.url utilisateur_url(utilisateur, format: :json)
end
