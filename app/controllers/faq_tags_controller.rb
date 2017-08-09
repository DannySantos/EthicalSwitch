class FaqTagsController < ApplicationController
  def create
    @faq_tag = FaqTag.create(faq_tag_params)
    @faq = Faq.find(params[:faq_tag][:faq_id])
    @tags = Tag.all
    
    respond_to do |format|
      format.js
    end
  end
  
  def destroy
    @faq_tag = FaqTag.find(params[:id])
    @faq = Faq.find(@faq_tag.faq_id)
    @faq_tag.destroy
    @tags = Tag.all
    
    respond_to do |format|
      format.js
    end
  end
  
  private
  
  def faq_tag_params
    params.require(:faq_tag).permit(:faq_id, :tag_id)
  end
end