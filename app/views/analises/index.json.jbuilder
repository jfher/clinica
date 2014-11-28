json.array!(@analises) do |analise|
  json.extract! analise, :id, :nombre
  json.url analise_url(analise, format: :json)
end
