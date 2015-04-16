class AddProductDetailsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :string
    add_column :products, :canPurchase, :boolean
    add_column :products, :soldOut, :boolean
  end
end
