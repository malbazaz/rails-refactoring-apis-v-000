class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: :create

  def create
    github_repo = GithubRepo.new(hash)
    session[:token] = github_repo.authenticate!(ENV["GITHUB_CLIENT"],ENV["GITHUB_SECRET"],params[:code])
    redirect_to '/'
  end 
end