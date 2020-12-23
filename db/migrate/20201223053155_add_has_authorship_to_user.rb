class AddHasAuthorshipToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :has_authorship, :boolean
  end
end
