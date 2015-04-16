class AddProductDetailsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :string
    add_column :products, :canpurchase, :boolean
    add_column :products, :soldout, :boolean
  end
end
