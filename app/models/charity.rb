class Charity < ApplicationRecord
  enum status: [:current, :expired]
  
  scope :current, ->() { where(["status = ?", 0]) }
  
  def filename
    self.short_name.downcase.gsub(" ", "_")
  end
end
