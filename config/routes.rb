Motivator::Application.routes.draw do

  root to: 'images#index'
  get '/fetch', to: 'images#index'
end
