class AdminController < ApplicationController
  before_action :authentication_redirect
  
  def admin
  end
  
  def switchers
    @switches = Switch.all
  end
  
  def subscribers
    @subscribers = Subscriber.all
  end
  
  def faqs
    @faqs = Faq.all.includes(:tags)
    @tags = Tag.all
  end
  
  def new_faq
    @faq = Faq.new
  end
  
  def messages
    @messages = Message.all
  end
  
  private
  
  def authentication_redirect
    redirect_to new_user_session_path unless current_user && current_user.admin
  end
end