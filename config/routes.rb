Rails.application.routes.draw do
  mount ActionMailbox::Engine => '/rails/action_mailbox'

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :articles, only: %i[index]
    end
  end
end
