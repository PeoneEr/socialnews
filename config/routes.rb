Rails.application.routes.draw do
  root to: 'welcome#index'

  namespace :manage do
    root to: 'groups#index'

    resource :groups
  end
end
