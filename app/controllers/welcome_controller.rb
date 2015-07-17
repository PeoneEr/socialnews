class WelcomeController < ApplicationController
  def index
    @entries = current_user.entries.order('id desc')
  end
end
