Rails.application.routes.draw do
  resources :items, only: %i[index new create]
end
