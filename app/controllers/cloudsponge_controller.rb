class CloudspongeController < ApplicationController

  def index
  end 

  # provision
  def create
    render json: {id: "cloudsponge_id", 
      config: {CLOUDSPONGE_DOMAIN_KEY: "domain_key", CLOUDSPONGE_DOMAIN_PASSWORD: "domain_password"}}, 
    status: 200
  end
end
