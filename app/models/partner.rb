class Partner < ApplicationRecord
  enum industry: [:power, :super, :homeloans]
  
  def filename
    self.name.downcase.gsub(" ", "_")
  end
end
