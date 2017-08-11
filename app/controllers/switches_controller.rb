class SwitchesController < ApplicationController
  def new
    load_new_instance_variables(params[:partner_id])
  end
  
  def create
    @switch = Switch.new(switch_params)
    
    if @switch.save
      redirect_to get_redirect_path(@switch)
    else
      load_new_instance_variables(@switch.partner_id)
      flash[:notice] = "Please make sure you have filled out all of your details"
      render :new
    end
  end
  
  def update
    @switch = Switch.find(params[:id])
    @switch.update(switch_params)
    
    respond_to do |format|
      format.js
    end
  end
  
  def ethical_power
    @charities = Charity.currently_live.order("created_at DESC")
    @faqs = Tag.find_by(name: "Ethical Power").faqs
    assign_partner_variables
    set_power_criteria(params[:state_id] || nil)
  end
  
  def ethical_super
    @charities = Charity.currently_live.order("created_at DESC")
    @faqs = Tag.find_by(name: "Ethical Super").faqs
    assign_partner_variables
  end
  
  def ethical_homeloans
    @switch = Switch.new
    @charities = Charity.currently_live.order("created_at DESC")
    @faqs = Tag.find_by(name: "Ethical Homeloans").faqs
    assign_partner_variables
  end
  
  def homeloans_sent
  end
  
  private
  
  def switch_params
    params.require(:switch).permit(:first_name, :last_name, :email, :postcode, :phone, :referrer, :partner_id, :charity_id, :status)
  end
  
  def get_redirect_path(switch)
    case switch.partner.name
    when "Powershop"
      "http://www.powershop.com.au/ethicalswitch/";
    when "Energy Locals"
      "https://energylocals.com.au/providers/ethicalswitch";
    when "Diamond Energy"
      "http://diamondenergy.com.au/ethical-switch/";
    when "Good Super"
      "https://www.goodsuper.com.au/ethical-switch/?utm_campaign=#{switch.charity.filename if switch.charity}&first_name=#{@switch.first_name}&last_name=#{@switch.last_name}&email=#{@switch.email}#section-join-form";
    when "Future Super"
      "http://switch.myfuturesuper.com.au/ethical-switch?first_name=#{@switch.first_name}&last_name=#{@switch.last_name}&email=#{@switch.email}"
    when "Australian Ethical"
      "https://www.australianethical.com.au/super/join-form/?first_name=#{@switch.first_name}&last_name=#{@switch.last_name}&email=#{@switch.email}&c=ethical-switch";
    when "Ethical Homeloans"
      homeloans_sent_switches_path
    end
  end
  
  def load_new_instance_variables(partner_id)
    @partner = Partner.find(partner_id)
    @switch = Switch.new
    @message = Message.new if @partner.name == "Powershop"
    @faqs = Faq.all
    @charities = Charity.currently_live
  end
end