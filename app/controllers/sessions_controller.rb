class SessionsController < ApplicationController

  def new

  end

  def create
		if session[:name] || params[:name] == '' || !params[:name]
      redirect_to '/login'
  	else
			session[:name] = params[:name]
			redirect_to '/'
		end
	end

	def show

	end

  def destroy
    session.delete :name
  end

end
