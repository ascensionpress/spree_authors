class AddAuthorToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :author, :string
  end
end
