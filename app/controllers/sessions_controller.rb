class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: :create

  def create
    github_repo = GithubRepo.new
    session[:token]
    redirect_to '/'
  end
end