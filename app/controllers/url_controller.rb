class UrlController < ApplicationController

    def show
      @url = Url.new
    end

    def create
      # byebug
      @current_url = Url.create(url_params)
    end

    def redirect
      redirect_to Url.find(params[:id]).url
    end

    private
    def url_params
      params.require(:url).permit(:url)
    end

end
