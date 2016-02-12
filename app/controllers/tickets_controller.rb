class TicketsController < ApplicationController
	skip_before_action :require_login, only: [:create, :new, :show]

	def create
		@ticket = Ticket.new ticket_params
		if @ticket.save
			redirect_to @ticket, notice: "Сообщение принято"
		else
			redirect_to 'new'
		end
	end

	

	private

	def ticket_params
		params.permit(:name, :email, :message)
	end
end
