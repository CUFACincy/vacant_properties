VacantProperties::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :submissions
  root to: 'high_voltage/pages#show', id: 'index'
  match "/thank_you/:id" => "submissions#show"

end
