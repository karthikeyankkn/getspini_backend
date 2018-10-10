class LeadsController < ApplicationController
	 skip_before_action :verify_authenticity_token

	def new
		@lead = Lead.new
	end

	def index
		@lead = Lead.all
	end

	def create
		@lead = Lead.new(lead_params)

		if @lead.save
			GetspiniMailer.send_email(@lead).deliver_now
			# render json: @lead, status: :created
			redirect_to action: 'index'
		else
			render json: @lead.errors, status: :unprocessable_entity
		end
	end

	

	def destroy
		@lead = Lead.find(params[:id])
		@lead.destroy
		redirect_to action: 'index'
	end




	private

	def lead_params
		params.require(:lead).permit(:name, :email, :phone_number, :category, :city)
	end
end