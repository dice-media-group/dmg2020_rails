json.extract! profile, :id, :city, :state, :created_at, :updated_at
json.url profile_url(profile, format: :json)
