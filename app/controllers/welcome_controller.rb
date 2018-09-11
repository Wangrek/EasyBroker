class WelcomeController < ApplicationController	
	def index
		todos = Anuncio.where(publicar: true).all
		@page = todos.paginate(:page => params[:page])
	end
end
