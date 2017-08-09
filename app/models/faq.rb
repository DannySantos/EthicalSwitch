class Faq < ApplicationRecord
  has_many :faq_tags
  has_many :tags, through: :faq_tags
end
