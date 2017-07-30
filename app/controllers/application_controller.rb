class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def assign_partner_variables
    @powershop = Partner.find_by(name: "Powershop")
    @energy_locals = Partner.find_by(name: "Energy Locals")
    @diamond_energy = Partner.find_by(name: "Diamond Energy")
    @australian_ethical = Partner.find_by(name: "Australian Ethical")
    @good_super = Partner.find_by(name: "Good Super")
    @future_super = Partner.find_by(name: "Future Super")
    @ethical_homeloans = Partner.find_by(name: "Ethical Homeloans")
  end
end
