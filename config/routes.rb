Rails.application.routes.draw do
  namespace :api do
    draw :api
  end

  namespace :admin do
    draw :admin
  end
end
