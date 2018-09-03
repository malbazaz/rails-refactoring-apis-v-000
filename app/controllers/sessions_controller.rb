class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: :create

  def create
    
    redirect_to '/'
  end
end