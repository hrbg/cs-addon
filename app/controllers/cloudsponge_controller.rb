class CloudspongeController < ApplicationController
  # respond_to :json, only: [:create]

  def index
  end 

  # provision
  def create
    render json: {hello: "world"}, status: 200
  end
end
