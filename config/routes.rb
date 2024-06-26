Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  mount ActionMailbox::Engine => '/rails/action_mailbox'

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :articles, only: %i[index]
    end
  end
end
