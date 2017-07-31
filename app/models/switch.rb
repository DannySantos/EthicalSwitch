class Switch < ApplicationRecord
  belongs_to :partner
  belongs_to :charity, optional: true
  
  enum referrer: [:facebook, :email, :charity, :other]
end
