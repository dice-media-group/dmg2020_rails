class OpenSourceWork < ApplicationRecord
    has_many :open_source_contributions
    has_many :post_categories
    has_many :open_source_contributors, through: :open_source_contributions
    # accepts_nested_attributes_for :open_source_contributors

  def open_source_contributors_attributes=(open_source_contributor_attributes)
    open_source_contributor_attributes.values.each do |open_source_contributor_attribute|
      open_source_contributor = OpenSourceContributor.find_or_create_by(open_source_contributor_attribute)
      self.open_source_contributors <<  open_source_contributor
    end
  end


end
