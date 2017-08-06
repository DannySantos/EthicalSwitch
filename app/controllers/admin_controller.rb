class AdminController < ApplicationController
  def admin
    redirect_to new_user_session_path unless current_user
    @switches = Switch.all
    @messages = Message.all
    @subscribers = Subscriber.all
  end
end