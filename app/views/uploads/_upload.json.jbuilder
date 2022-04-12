json.extract! upload, :id, :name, :description, :thumbnail, :created_at, :updated_at
json.url upload_url(upload, format: :json)
