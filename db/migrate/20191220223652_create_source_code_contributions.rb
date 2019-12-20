class CreateSourceCodeContributions < ActiveRecord::Migration[6.0]
  def change
    create_table :source_code_contributions do |t|
      t.belongs_to :source_code_contributor, null: false, foreign_key: true
      t.belongs_to :source_code_credit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
