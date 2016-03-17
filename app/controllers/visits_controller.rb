class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def create
    url_adjusted = (params["url"].split("/"))[2]
    Visit.create({url: url_adjusted, email: params["email"], start_time: params["time"]})
    render json: {message: "success"}
  end

  def reset
    Visit.delete_all
    redirect_to action: :index
  end
end
