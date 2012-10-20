VacantProperties::Application.routes.draw do

  resources :submissions
  root to: 'high_voltage/pages#show', id: 'home'
  match "/thank_you/:id" => "submissions#show"

end
