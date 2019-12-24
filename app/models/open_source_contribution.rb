class OpenSourceContribution < ApplicationRecord
  belongs_to :open_source_contributor
  belongs_to :open_source_work
end
