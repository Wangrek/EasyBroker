require 'rails/all'
require 'rubygems'
require 'nokogiri'

namespace :cargar do
	task :xml => :environment do
		@page = []
		
		# Setea el campo publicar, de todos los registros en la bd igual a true, a falso, para despublicarlos.
		Anuncio.where(publicar: true).update_all(publicar: false)

		# Parsea las propiedades del XML.
		doc = Nokogiri::XML(File.open("trovit_MX.xml"))
		doc.xpath('//ad').each do |ad_element|
			
			# Parsea fotos del XML
			pictures = []		
			ad_element.xpath('pictures/picture').each do |pics|
				pictures.push(pics.xpath('picture_url').text) 
			end
			
			# Llena tabla anuncios de la bd con base en los datos parseados del XML.
			Anuncio.create(
				:identificador => ad_element.xpath('id').text,
				:bien => ad_element.xpath('property_type').text,
				:url => ad_element.xpath('url').text,
				:descripcion => ad_element.xpath('content').text,
				:tipo => ad_element.xpath('type').text,
				:agencia => ad_element.xpath('agency').text,
				:precio => ad_element.xpath('price').text,
				:metros => ad_element.xpath('floor_area').text,
				:recamaras => ad_element.xpath('rooms').text,
				:baños => ad_element.xpath('bathrooms').text,
				:ubicacion => ad_element.xpath('city_area').text + " " + ad_element.xpath('city').text + " " + ad_element.xpath('region').text + " " + ad_element.xpath('longitude').text + " " + ad_element.xpath('latitude').text,
				:fecha => ad_element.xpath('date').text + " " + ad_element.xpath('time').text,
				:fotos => pictures,
				:publicar => true
				)
		end
		puts "Rake ejecutado..."
	end
end 