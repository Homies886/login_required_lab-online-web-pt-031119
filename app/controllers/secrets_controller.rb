class SecretsController < ApplicationController

	before_action :require_login

	def show
		render :show
	end

	private

	def require_login
    return head(:forbidden) unless session.include? session[:name]
    redirect_to '/login'
  end

end
