class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
    	t.string :name
    	t.string :email
    	t.string :phone_number
    	t.string :category
    	t.string :city
    	t.timestamps
    end
  end
end
