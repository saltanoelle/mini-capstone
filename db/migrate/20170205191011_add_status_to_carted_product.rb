class AddStatusToCartedProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :carted_products, :status, :string
  end
end
