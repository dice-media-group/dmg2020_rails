class SourceCodeContribution < ApplicationRecord
  belongs_to :source_code_contributor
  belongs_to :source_code_credit
end
