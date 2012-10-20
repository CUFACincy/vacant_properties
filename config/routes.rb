require 'resque/server'

VacantProperties::Application.routes.draw do

  mount Resque::Server.new, :at => "/resque"
  resources :submissions, only: :create
  root to: 'high_voltage/pages#show', id: 'home'

end
