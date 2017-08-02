class AdminController < ApplicationController
  def admin
    @switches = Switch.all
    @messages = Message.all
  end
end