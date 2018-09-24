class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    add_column :property_deals, :banner_url, :string
  end
end
