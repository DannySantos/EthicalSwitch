class Charity < ApplicationRecord
  def filename
    self.name.downcase.gsub(" ", "_")
  end
end
