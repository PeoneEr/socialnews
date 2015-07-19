class WelcomeController < ApplicationController
  helper_method :page

  def index
    @entries = current_user.entries.order('id desc').page(page)
  end

  def page
    params[:page] || 1
  end
end
