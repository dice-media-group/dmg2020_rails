json.extract! open_source_work, :id, :title, :license_kind, :license_text, :url, :created_at, :updated_at
json.url open_source_work_url(open_source_work, format: :json)
