class OpenSourceContributor < ApplicationRecord
    has_many :open_source_contributions
    has_many :open_source_works, through: :open_source_contributions
    accepts_nested_attributes_for :open_source_works
end
