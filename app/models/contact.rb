class Contact < ApplicationRecord
  validates_presence_of :name, :email, :phone, :city, message: "el campo no puede estar vacío!"
  validates_format_of :email, with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, message: "el correo no es válido!"
end
