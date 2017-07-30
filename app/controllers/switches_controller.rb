class SwitchesController < ApplicationController
  def ethical_power
    @faqs = FaqCategory.find_by(name: "Ethical Power").faqs
  end
  
  def ethical_super
    @faqs = Faq.all
  end
  
  def ethical_homeloans
    @faqs = Faq.all
    @switch = Switch.new
  end
end