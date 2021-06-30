Rails.application.routes.draw do

  root to: 'pixels#home'
  post '/start_breeding', to: 'pixels#initialize_breed', as: :init_breed
  get '/breed', to: 'pixels#breed', as: :breed
  get '/reset', to: 'pixels#reset', as: :reset

end
