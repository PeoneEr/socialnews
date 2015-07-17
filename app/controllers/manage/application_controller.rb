class Manage::ApplicationController < ApplicationController
  protect_from_forgery with: :exception

  layout 'manage'
end
