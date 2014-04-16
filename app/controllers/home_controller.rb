class HomeController < ApplicationController
  def index
    @info_request = InfoRequest.new
    render 'home/index'
  end

  def create
    request = InfoRequest.new(params[:info_request])
    request.save!
    redirect_to :controller => :info_requests, :action => :index
  end

end
