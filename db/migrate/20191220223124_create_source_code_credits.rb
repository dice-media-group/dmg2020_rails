class CreateSourceCodeCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :source_code_credits do |t|
      t.string :name_of_work
      t.text :url
      t.string :license_kind
      t.text :license_text

      t.timestamps
    end
  end
end
