class HomeController < ApplicationController
  def index
    @info_request = InfoRequest.new

    render 'home/index'
  end

  def create
    request = InfoRequest.new(params[:info_request])
    request.save!
    if @request.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Message cannot be sent.'
      render :index
    end
    Mailer.signup_mail(request).deliver

    redirect_to :controller => :info_requests, :action => :index
  end

end
