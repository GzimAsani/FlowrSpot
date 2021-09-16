Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'

  get '/questions', to: "sightings#get_questions"
  resources :sightings
  resources :flowers
end
