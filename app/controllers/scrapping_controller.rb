class ScrappingController < ApplicationController
  def index
  end
  def scrapping
  	@results = []
    @images = []
  	search_term = params[:a]
    responses = Nokogiri::HTML.parse(RestClient.get("http://tratu.soha.vn/dict/en_vn/#{search_term}"))  
    responses.css('h5 .mw-headline').each do |response|
		@results<<response.text
	end
end
end
 