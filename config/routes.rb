Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/character_classes'          => 'character_classes#index'
  get '/character_class'            => 'character_classes#show'
  get '/character_class_new'    => 'character_classes#new'
end
