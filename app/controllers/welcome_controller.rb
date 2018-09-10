require 'nokogiri'
class WelcomeController < ApplicationController
	def index
		adds = []
		@page = []
		doc = Nokogiri::XML(File.open("trovit_MX.xml"))
		doc.xpath('//ad').each do |ad_element|
			 adds.push(ad_element)
		end
		#@page = @adds.paginate(:page => 5, :per_page => 10)
		@page = adds.paginate(:page => params[:page])
		#puts  @adds
	end
end
