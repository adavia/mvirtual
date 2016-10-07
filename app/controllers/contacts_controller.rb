class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactsMailer.submitted(@contact).deliver_later
        format.html { redirect_to root_url, notice:
          'Gracias por contactarse con nosotros. Nos estaremos comunicando
          a la brevedad para asesorarlo.' }
        format.js   {}
        format.json {
          render json: @contact, status: :created, location: @contact
        }
      else
        format.html { render action: 'new' }
        format.js   {}
        format.json {
          render json: @contact.errors, status: :unprocessable_entity
        }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :cel_phone, :city, :comment)
  end
end
