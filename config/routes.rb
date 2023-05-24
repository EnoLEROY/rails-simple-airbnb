Rails.application.routes.draw do
  resources :flats, only: %i[index show new create]
end
