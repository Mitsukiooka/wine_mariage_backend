Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  namespace :api do
    draw :api
  end

  namespace :admin do
    draw :admin
  end
end
