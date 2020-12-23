class BlogEntry < ApplicationRecord
  belongs_to :user
  has_rich_text       :body

  def author
    self.user
  end
end
