class Switch < ApplicationRecord
  belongs_to :partner
  belongs_to :charity, optional: true
  
  enum referrer: [:facebook, :email, :charity, :other]
  enum status: [:pending, :confirmed, :billed]
  
  validates :first_name, :last_name, :email, presence: true
end
