class CreatePropertyDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :property_deals do |t|
    	t.string :title
    	t.string :offer_details
    	t.string :address
    	t.string :description
    	t.string :about
    	t.string :terms
    	t.string :seo_url
    	t.string :offer_img_url
    	t.timestamps
    end
  end
end
