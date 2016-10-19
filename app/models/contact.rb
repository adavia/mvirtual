class Contact < ApplicationRecord
  validates :phone, presence: true, unless: -> (contact){ contact.cel_phone.present? }
  validates :phone, length: { maximum: 10 }
  validates :cel_phone, presence: true, unless: -> (contact){ contact.phone.present? }
  validates :cel_phone, length: { maximum: 10 }
  validates_presence_of :name, :email, :city
  validates_format_of :email, with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
