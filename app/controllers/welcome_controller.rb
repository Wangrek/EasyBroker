class WelcomeController < ApplicationController	
	# Método principal que trae todos los anuncios activos de la bd y los pagina.
	def index
		todos = Anuncio.where(publicar: true).all
		@page = todos.paginate(:page => params[:page], :per_page => 10)
	end
end