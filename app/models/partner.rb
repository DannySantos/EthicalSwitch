class Partner < ApplicationRecord
  enum industry: [:power, :super, :homeloans]
end
