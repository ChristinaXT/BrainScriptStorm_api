Rails.application.routes.draw do

# I want my api to be BrainScriptStorm.com/api/v1/resource
namespace :api do
  namespace :v1 do
  resources :inciting_incidents
  resources :epoches
  resources :given_circumstances
  resources :characters
  resources :titles
  resources :stories
  resources :locations
  resources :users
 end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
