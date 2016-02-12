class TicketsController < ApplicationController
	skip_before_action :require_login, only: [:create, :new, :show]

	def create
		@ticket = Ticket.new ticket_params
		@url = params[:back_url]
		if @ticket.save
			redirect_to 'new', notice: "Сообщение принято"
		else
			redirect_to 'new'
		end
	end

	

	private

	def ticket_params
		params.permit(:name, :email, :message)
	end
end
