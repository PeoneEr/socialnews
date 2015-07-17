class Manage::ApplicationController < ApplicationController
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  layout 'manage'
end
