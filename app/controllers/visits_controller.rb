class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def create
    Visit.create({url: params["url"]})
    render json: {message: "success"}
  end
end
