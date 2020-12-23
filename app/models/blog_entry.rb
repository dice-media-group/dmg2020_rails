class BlogEntry < ApplicationRecord
  belongs_to :user
  has_rich_text       :body

  def author
    self.user
  end

  def published?
    self.publish_at < Time.now
  end
end
