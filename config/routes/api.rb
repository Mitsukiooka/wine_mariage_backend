resources :wines, except: [:new, :edit]
resources :profiles, only: [:create] do
  collection do
    get :show
    patch :update
  end
end
