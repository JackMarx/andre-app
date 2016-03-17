class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def create
    url_adjusted = (params["url"].split("/"))[2]
    time_adjusted = DateTime.strptime(params["time"],'%s')
    Visit.create({url: url_adjusted, email: params["email"], start_time: time_adjusted})
    render json: {message: "success"}
  end

  def reset
    Visit.delete_all
    redirect_to action: :index
  end
end
