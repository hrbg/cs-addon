class CloudspongeController < ApplicationController

  def index
  end 

  # provision
  def create
    render json: {hello: "world"}, status: 200
  end
end
