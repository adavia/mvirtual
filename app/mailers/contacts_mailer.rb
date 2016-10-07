class ContactsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contacts_mailer.submitted.subject
  #
  def submitted(contact)
    @contact = contact

    mail to: "asesor01@mayordomototal.com", subject: "Nuevo comentario de #{@contact.name}"
  end
end
