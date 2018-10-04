class PropertyDealsController < ApplicationController
	 skip_before_action :verify_authenticity_token

	def new
		@property_deal = PropertyDeal.new
	end
	def create
		@property_deal = PropertyDeal.new(property_deal_params)
		if @property_deal.save
			# render json: @property_deal, status: :created
			redirect_to action: 'show_all'
		else
		 	render json: @property_deal.errors.full_messages, status: :bad_request
		end
	end

	def index
		@property_deal = PropertyDeal.all
		render json: @property_deal, status: :created
	end

	def show_all
		@property_deal = PropertyDeal.all
	end

	def show
		@property_deal = PropertyDeal.find(params[:id])
		render json: @property_deal, status: :created
	end

	def edit
	end
	
	def update
		if @property_deal.update(property_deal_params)
			redirect_to property_deal_path(@property_deal)
		else
			render 'edit'	
		end
	end

	def destroy
		@property_deal = PropertyDeal.find(params[:id])
		@property_deal.destroy
		redirect_to action: 'show_all'
	end

	private

	def property_deal_params
		params.require(:property_deal).permit(:title, :offer_details, :address, :description, :about, :terms, :seo_url, :offer_img_url, :banner_url)
	end
end