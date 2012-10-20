VacantProperties::Application.routes.draw do

  resources :submissions, only: :create
  root to: 'high_voltage/pages#show', id: 'home'

end
