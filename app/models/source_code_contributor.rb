class SourceCodeContributor < ApplicationRecord
    has_source_code_contributor_name
    has_many :source_code_contributions
    has_many :source_code_credits, through: :source_code_contributions
end
