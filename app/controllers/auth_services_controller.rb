class AuthServicesController < ApplicationController
  def index
  end
  
  def create
    render :text => request.env["omniauth.auth"].to_yaml
  end
end
