class CreateBlogEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_entries do |t|
      t.string :title
      t.datetime :publish_at
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
