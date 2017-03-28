class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to :root, notice: "お問い合わせありがとうございました"
    else
      render 'new'
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
