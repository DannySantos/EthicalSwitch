class CharitiesController < ApplicationController
  def show
    @charity = Charity.find(params[:id])
    @charities = Charity.all.current
    assign_partner_variables
    @faqs = Tag.find_by(name: "Ethical Switch").faqs
    @switch = Switch.new
  end
end