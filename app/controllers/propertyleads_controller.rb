class PropertyleadsController < ApplicationController
	 skip_before_action :verify_authenticity_token

	def create
		@lead = Lead.new(lead_params)

		if @lead.save
			GetspiniMailer.sendemail(@lead).deliver_now
			render json: @lead.errors, status: :created
		else
			render json: @lead.errors, status: :unprocessable_entity
		end
	end


	def show
		
	end



	private

	def lead_params
		params.require(:lead_params).permit(:name,:email,:phone_number,:category, :city)
	end
end