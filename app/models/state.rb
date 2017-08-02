class State < ApplicationRecord
  has_many :power_provider_states
  has_many :power_providers, through: :power_provider_states
end
