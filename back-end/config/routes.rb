Rails.application.routes.draw do
  resources :character_spells
  resources :characters
  resources :spells
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
