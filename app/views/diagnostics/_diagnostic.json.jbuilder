json.extract! diagnostic, :id, :code, :description, :sexo, :created_at, :updated_at
json.url diagnostic_url(diagnostic, format: :json)
