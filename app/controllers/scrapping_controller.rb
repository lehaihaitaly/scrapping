class ScrappingController < ApplicationController
  def index
  end
  def scrapping
  	search_term = params[:a]
	response = Nokogiri::HTML.parse(RestClient.get("http://www.dictionary.com/browse/#{search_term}?s=t"))  
	@test = response.css('title').text
  end
end
