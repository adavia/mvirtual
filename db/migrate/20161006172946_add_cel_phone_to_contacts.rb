class AddCelPhoneToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :cel_phone, :string
  end
end
