Rails.application.routes.draw do
   mount ActionMailbox::Engine => '/rails/action_mailbox'
end
