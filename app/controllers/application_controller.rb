# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!

  # include Response
  # include ExceptionHandler

  # called before every action on controllers
  # before_action :authorize_request
  # attr_reader :current_user

  # private

  # Check for valid request token and return user
  def ping
    authenticate_user!
    render plain: 'PONG'
  end
end
