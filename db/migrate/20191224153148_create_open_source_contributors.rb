class CreateOpenSourceContributors < ActiveRecord::Migration[6.0]
  def change
    create_table :open_source_contributors do |t|
      t.string :first_name
      t.string :last_name
      t.string :url
      t.string :email
      t.string :gravatar_username

      t.timestamps
    end
  end
end
