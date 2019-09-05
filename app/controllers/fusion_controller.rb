class FusionController < ApplicationController
  def index
    # byebug
    puts params['term']
    @API_KEY = ENV['fusion_api_key']
    @API_HOST = "https://api.yelp.com"
    @SEARCH_PATH = "/v3/businesses/search"
    @BUSINESS_PATH = "/v3/businesses/"
    @DEFAULT_BUSINESS_ID = "yelp-san-francisco"
    @DEFAULT_TERM = "dinner"
    @DEFAULT_LOCATION = "Denver, CO"
    @SEARCH_LIMIT = 20
    
    def search(term, location)
        url = "https://api.yelp.com/v3/businesses/search"
        params = {
          term: term,
          location: location,
          limit: @SEARCH_LIMIT
        }

        response = HTTP
          .auth("Bearer #{ENV['fusion_api_key']}")
          .get(url, params: params)
        response.parse
    end
    
    render json: search(params['term'], params['location'])

  end



  # private
  #   def fusion_params
  #     params.require(:fusions).permit(:term, location)
  #   end
end

ActionController::Parameters.permit_all_parameters = true