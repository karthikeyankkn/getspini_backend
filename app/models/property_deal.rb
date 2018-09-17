class PropertyDeal < ApplicationRecord
	validates :title,:presence => true
  validates :offer_details,:presence => true
  validates :address,:presence => true
  validates :description,:presence => true
  validates :about,:presence => true
  validates :terms,:presence => true
  validates :seo_url,:presence => true
  validates :offer_img_url,:presence => true
end
