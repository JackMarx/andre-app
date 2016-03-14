class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def create
    Visit.create({params["url"]})
    render json: {message: "success"}
  end
end
