class Charity < ApplicationRecord
  enum status: [:currently_live, :expired]
  
  scope :currently_live, ->() { where(["status = ?", 0]) }
  
  def filename
    self.short_name.downcase.gsub(" ", "_")
  end
end
