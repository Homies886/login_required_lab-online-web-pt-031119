class SecretsController < ApplicationController

	before_action :require_login

	def show
		render :show
	end

	def require_login
    return head(:forbidden) unless session.include? :name
  	redirect_to '/login'
  end

end
