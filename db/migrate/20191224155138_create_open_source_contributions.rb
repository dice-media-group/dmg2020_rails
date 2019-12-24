class CreateOpenSourceContributions < ActiveRecord::Migration[6.0]
  def change
    create_table :open_source_contributions do |t|
      t.references :open_source_contributor, null: false, foreign_key: true
      t.references :open_source_work, null: false, foreign_key: true

      t.timestamps
    end
  end
end
