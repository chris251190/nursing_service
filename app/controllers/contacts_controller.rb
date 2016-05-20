class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = 'Danke für die Nachricht! Wir werden Sie so schnell wie möglich kontaktieren.'      
      redirect_to kontakt_url
    else
      flash.now[:error] = 'Die Nachricht konnte nicht gesendet werden.'
      render :new
    end
  end
end