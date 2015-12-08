class QuotesController < ApplicationController
	include ActionController::MimeResponds

	def index
		@quotes = Quote.all 

		respond_to do |format|
			format.html
			format.json { render json: @quotes}
			format.xml { render xml: @quotes}
		end
	end 


end
