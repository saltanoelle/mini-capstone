class AddPhoneToSuppliers < ActiveRecord::Migration[5.0]
  def change
     add_column :suppliers, :phone, :string
  end
end
