class PowerProvider < ApplicationRecord
  has_many :power_provider_states
  has_many :states, through: :power_provider_states
  has_many :termination_fees
  
  def filename
    self.name.downcase.gsub(" ", "_")
  end
  
  def partner?
    self.filename == "powershop" || self.filename == "diamond_energy" || self.filename == "energy_locals"
  end
  
  def dirty_three?
    self.filename == "origin_energy" || self.filename == "agl_energy" || self.filename == "energy_australia"
  end
  
  def prechecked?(state)
    self.partner? || self.dirty_three? || (self.filename == "aurora_energy" && (state && state.short_name == "TAS"))
  end
  
  def extra_details(provider_name)
    case provider_name
    when "powershop"
      "<ul class='lisn'><li><strong>Switch through Ethical Switch and we will make a donation to charity!</strong></li><li>Commonly have the lowest prices in VIC! #{ActionController::Base.helpers.image_tag("help.png", rel: "tooltip", title: "The Essential Services commission stated in a Dec '14 report 'taking into account all available discounts, the lowest overall prices were most commonly available from Powershop' <br /> <span class='tooltip-tap'>Tap to close</span>")}</li><li>If you\'re stuck in a contract, Powershop will pay your exit fees! #{ActionController::Base.helpers.image_tag("help.png", rel: "tooltip", title: "Up tp $75, which covers almost every residential contract <br /> <span class=&quot;tooltip-tap&quot;>Tap to close</span>")}</li><li>Awesome phone app to track usage/pay bills</li></ul>".html_safe
    when "energy_locals"
      '<ul class="lisn"><li><strong>Switch through Ethical Switch and we will make a donation to charity!</strong></li><li>Fixed prices until July 2018</li><li>A company promise to never raise prices for profit reasons!</li><li>Donate over half their profits to charity.</li><li>No lock in contracts</li></ul>'.html_safe
    when "diamond_energy"
      '<ul class="lisn"><li><strong>Switch through Ethical Switch and we will make a donation to charity!</strong></li><li>Excellent offers, feed in rates and service for solar customers</li><li>Great customer service</li></ul>'.html_safe
    else
      nil
    end
  end
end