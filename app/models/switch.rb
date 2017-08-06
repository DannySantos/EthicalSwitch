class Switch < ApplicationRecord
  belongs_to :partner
  belongs_to :charity, optional: true
  
  enum referrer: [:facebook, :email, :charity, :other]
  
  validates :first_name, :last_name, :email, presence: true
end
