class FaqsController < ApplicationController
  def index
    @faqs = Faq.all
  end
  
  def create
    @faq = Faq.create(faq_params)
    redirect_to admin_faqs_path, notice: "FAQ created"
  end
  
  def edit
    @faq = Faq.find(params[:id])
  end
  
  def update
    @faq = Faq.find(params[:id])
    @faq.update(faq_params)
    redirect_to admin_faqs_path, notice: "FAQ updated"
  end
  
  def destroy
    @faq = Faq.find(params[:id])
    @faq.destroy
    redirect_to admin_faqs_path, notice: "FAQ deleted"
  end
  
  private
  
  def faq_params
    params.require(:faq).permit(:title, :answer)
  end
end