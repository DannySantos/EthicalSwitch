class TerminationFee < ApplicationRecord
  belongs_to :state
  belongs_to :power_provider
end
