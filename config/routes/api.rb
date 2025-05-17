resources :wines, except: [:new, :edit] do
  resources :wine_reviews
end
