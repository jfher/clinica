json.array!(@valors) do |valor|
  json.extract! valor, :id, :nombre, :rangoMax, :rangoMin
  json.url valor_url(valor, format: :json)
end
