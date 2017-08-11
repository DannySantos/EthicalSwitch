class MessagesController < ApplicationController
  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(message_params)
    
    if @message.bill_comparison
      if @message.save
        BillCompareMailer.bill_compare_email(@message).deliver_now
        
        respond_to do |format|
          format.js
        end
      else
        render 'partners#show'
      end
    else
      if @message.save
        MessageMailer.new_message_email(@message).deliver_now
        
        redirect_to root_path, notice: "Message sent"
      else
        render :new
      end
    end
  end
  
  private
  
  def message_params
    params.require(:message).permit(:name, :email, :postcode, :phone, :message, :bill_comparison)
  end
end