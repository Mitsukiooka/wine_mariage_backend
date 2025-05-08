resources :wines, except: [:new, :edit] do
  resources :reviews
end

resources :profiles, only: [:create] do
  collection do
    get :show
    patch :update
  end
end


