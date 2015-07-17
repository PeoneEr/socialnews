class WelcomeController < ApplicationController
  def index
    @entries = Entry.all.order('id desc')
  end
end
