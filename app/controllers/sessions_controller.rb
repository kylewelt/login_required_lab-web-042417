class SessionsController < ApplicationController

  def index
  end

  def create
    @name = params[:name]

    if @name.nil? || @name.empty?
      redirect_to root_path
    else
      session[:name] = @name
      # redirect_to welcome_url
      redirect_to welcome_path
    end
  end

  def destroy
    # leaves session[:name] nil if it was not set
    # clears session[:name] if it was set
    session.delete :name
    redirect_to root_path
  end

end
