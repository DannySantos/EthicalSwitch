class Tag < ApplicationRecord
  has_many :faq_tags
  has_many :faqs, through: :faq_tags
end
