class SwitchesController < ApplicationController
  def new
    @partner = Partner.find(params[:partner_id])
    @switch = Switch.new
    @message = Message.new if @partner.name == "Powershop"
    @faqs = Faq.all
    @charities = Charity.current
  end
  
  def create
    binding.pry
    @switch = Switch.new(switch_params)
    
    if @switch.save
      redirect_to get_redirect_path(@switch)
    else
      render :new
    end
  end
  
  def ethical_power
    @faqs = FaqCategory.find_by(name: "Ethical Power").faqs
  end
  
  def ethical_super
    @faqs = Faq.all
  end
  
  def ethical_homeloans
    @switch = Switch.new
    @faqs = Faq.all
  end
  
  def homeloans_sent
  end
  
  private
  
  def switch_params
    params.require(:switch).permit(:first_name, :last_name, :email, :postcode, :phone, :referrer, :partner_id, :charity_id)
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
end