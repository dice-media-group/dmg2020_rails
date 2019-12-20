class SourceCodeCredit < ApplicationRecord
    has_many :source_code_contributors
    has_many :source_code_credits, through: :source_code_contributions
end
