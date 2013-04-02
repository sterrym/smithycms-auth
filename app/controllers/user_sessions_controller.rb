require_dependency "smithy/application_controller"

module Smithy
  class UserSessionsController < ApplicationController
    skip_before_filter :authenticate_smithy_admin

    def new
    end

    def create
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to smithy_pages_url, :notice => "Logged in!"
      else
        flash.now.alert = "Invalid email or password"
        render "new"
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_url, :notice => "Logged out!"
    end
  end
end
