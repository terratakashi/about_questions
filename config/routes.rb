PostitTemplate::Application.routes.draw do
  root to: 'questions#index'

  resource :users, only: [ :new, :create ]
  resource :sessions, only: [:new, :create]
end
