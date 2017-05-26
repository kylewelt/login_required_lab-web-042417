class SecretsController < ApplicationController
  before_action :require_login

  def show
    # shows the secret if you're logged in
    # redirect to login if you're not logged in
  end

  private

  def require_login
    redirect_to root_path unless session.include? :name
  end

end
