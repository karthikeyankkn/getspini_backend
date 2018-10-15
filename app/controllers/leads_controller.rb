class LeadsController < ApplicationController
	 skip_before_action :verify_authenticity_token
	 before_action :set_lead, only: [:edit, :destroy, :update, :show]
	def new
		@lead = Lead.new
	end

	def index
		@lead = Lead.paginate(:page => params[:page], :per_page => 20)
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

	def update
		if @lead.update(lead_params)
			flash[:success] = "lead was successfully updated"
			redirect_to lead_path(@lead)
		else
			render 'edit'	
		end
	end

	def destroy
		@lead = Lead.find(params[:id])
		@lead.destroy
		redirect_to action: 'index'
	end

	def show
		
	end



	private

	def set_lead
			@lead = Lead.find(params[:id])
	end
	def lead_params
		params.require(:lead).permit(:name, :email, :phone_number, :category, :city)
	end
end