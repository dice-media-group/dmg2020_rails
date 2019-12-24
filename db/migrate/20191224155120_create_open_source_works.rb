class CreateOpenSourceWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :open_source_works do |t|
      t.string :title
      t.string :license_kind
      t.string :license_text
      t.string :url

      t.timestamps
    end
  end
end
