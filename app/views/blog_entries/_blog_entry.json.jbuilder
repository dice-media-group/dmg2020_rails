json.extract! blog_entry, :id, :title, :publish_at, :user_id, :created_at, :updated_at
json.url blog_entry_url(blog_entry, format: :json)
