class AddShopNameToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :shop_name, :string
  end
end
