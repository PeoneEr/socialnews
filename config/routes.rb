Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'

  namespace :manage do
    root to: 'groups#index'

    resource :groups
  end
end
